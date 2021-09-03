package com.company.lottomon.controller;

import com.company.lottomon.common.HtmlCrawling;
import com.company.lottomon.model.LottoData;
import com.company.lottomon.model.LottoPlace;
import com.company.lottomon.service.AdminService;
import com.company.lottomon.service.LottoService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.io.IOUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;

@Controller
@Component
public class BatchController {
    Logger log = Logger.getLogger(this.getClass());

    @Autowired
    @Resource(name = "lottoService")
    private LottoService lottoService;

    @Autowired
    @Resource(name = "adminService")
    private AdminService adminService;

    /**
     * 로또 1등 당첨 정보
     */
    @RequestMapping(value = "/batch/placeStore.do", method = RequestMethod.GET)
    public @ResponseBody
    ResponseEntity<Object> placeStore(Model model) {
        try {
            int lastPlaceDrwNo = lottoService.selectPlaceData()+1;

            String param = "&drwNo=" + lastPlaceDrwNo;
            String url = "https://dhlottery.co.kr/store.do?method=topStore&pageGubun=L645"+param;

            HtmlCrawling hc = new HtmlCrawling();

            Document doc = (Document) hc.getHtml(url);
            Elements mElementDatas = doc.select(".tbl_data_col").eq(0).select("tr");
            LottoPlace lp = new LottoPlace();

            List<LottoPlace> placeList = new ArrayList<>();
            for (Element ele : mElementDatas){
                Elements tdList = ele.select("td");
                if(tdList.size() < 1 || tdList.get(0).text().contains("조회 결과가")){
                    continue;
                }else{
                    for (int i = 0; i < tdList.size(); i++) {
                        lp.setDrwNo(lastPlaceDrwNo);
                        if(i == 1){
                            lp.setName(tdList.eq(i).text());
                        }else if(i == 2){
                            lp.setType(tdList.eq(i).text());
                        }else if (i == 3){
                            lp.setAddr(tdList.eq(i).text());
                            placeList.add(lp);
                            lp = new LottoPlace();
                        }
                    }
                }
            }
            if(placeList.size() > 0){
                lottoService.insertLottoPlaceData(placeList);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("Fail", HttpStatus.OK);
        }
        return new ResponseEntity<>("Success", HttpStatus.OK);
    }


    /**
     * 로또 1등 당첨 정보 크롤링 버전
     */
    @RequestMapping(value = "/batch/getDhData.do", method = RequestMethod.GET)
    public @ResponseBody
    ResponseEntity<Object> getDhData(Model model) throws IOException {
        try {
            int lastDrwNo = lottoService.selectLastDrwNo()+1;

            String param = "&drwNo="+lastDrwNo;
            String url = "https://dhlottery.co.kr/gameResult.do?method=byWin" + param;

            HtmlCrawling hc = new HtmlCrawling();
            Document doc = (Document) hc.getHtml(url);

            LottoData ld = new LottoData();

            //당첨 금액, 인원수 추출
            Elements mElementDatas = doc.select(".tbl_data_col").eq(0).select("tr");
            int i = 0;
            ld.setDrwNo(lastDrwNo);
            for  (Element ele : mElementDatas){
                Elements tdList = ele.select("td");
                if(i==0){
                    i++;
                }else if(i==1){
                    ld.setPlaceNo1_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo1_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }else if(i==2){
                    ld.setPlaceNo2_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo2_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }else if(i==3){
                    ld.setPlaceNo3_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo3_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }else if(i==4){
                    ld.setPlaceNo4_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo4_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }else if(i==5){
                    ld.setPlaceNo5_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo5_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }
            }

            Elements mElementNo = doc.select(".ball_645");
            i = 1;
            for  (Element ele : mElementNo){
                switch (i){
                    case 1:
                        ld.setDrwtNo1(Integer.parseInt(ele.text()));
                    case 2:
                        ld.setDrwtNo2(Integer.parseInt(ele.text()));
                    case 3:
                        ld.setDrwtNo3(Integer.parseInt(ele.text()));
                    case 4:
                        ld.setDrwtNo4(Integer.parseInt(ele.text()));
                    case 5:
                        ld.setDrwtNo5(Integer.parseInt(ele.text()));
                    case 6:
                        ld.setDrwtNo6(Integer.parseInt(ele.text()));
                    case 7:
                        ld.setBnusNo(Integer.parseInt(ele.text()));
                }
                i++;
            }
            Elements drwDate = doc.select(".desc");
            for  (Element ele : drwDate){
                String date = ele.text().substring(1,13).replaceAll("년 ", ".").replaceAll("월 ", ".");
                ld.setDwr_dt(date);
            }
            System.out.println(ld);
            lottoService.insertLottoData(ld);

            System.out.println(lastDrwNo +" 회차 정보 저장 성공");



            //당첨 번호 추출
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("Fail", HttpStatus.OK);
        }

        return new ResponseEntity<>("Success", HttpStatus.OK);
    }


    /**
     * 로또 1등 당첨 정보 excel 다운 버전
     */
    @RequestMapping(value = "/batch/getDhDataExcel.do", method = RequestMethod.GET)
    public @ResponseBody
    ResponseEntity<Object> getDhDataExcel(Model model) throws IOException {


        String downPwd = "C:\\20_sources\\dhlotto\\";
        InputStream is = null;
        FileOutputStream os = null;

        try {

            int lastPlaceDrwNo = lottoService.selectLastDrwNo()+1;
            String dhUrl = "https://dhlottery.co.kr/gameResult.do?method=allWinExel&gubun=byWin&nowPage="+lastPlaceDrwNo+"&drwNoStart="+lastPlaceDrwNo+"&drwNoEnd="+lastPlaceDrwNo;
            String fileName = "";
            URL url = new URL(dhUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            int responseCode = conn.getResponseCode();

            File Folder = new File(downPwd);

            // 해당 디렉토리가 없을경우 디렉토리를 생성.
            if (!Folder.exists()) Folder.mkdir();

            System.out.println("responseCode " + responseCode);
            if (responseCode == HttpURLConnection.HTTP_OK) {
                fileName = "lotto"+lastPlaceDrwNo+".xls";
                String disposition = conn.getHeaderField("Content-Disposition");
                String contentType = conn.getContentType();

                is = conn.getInputStream();
                os = new FileOutputStream(new File(downPwd, fileName));

                final int BUFFER_SIZE = 4096;
                int bytesRead;
                byte[] buffer = new byte[BUFFER_SIZE];
                while ((bytesRead = is.read(buffer)) != -1) {
                    os.write(buffer, 0, bytesRead);
                }
                os.close();
                is.close();
                System.out.println("File downloaded");
            }



            try {
                File file = new File(downPwd + fileName);
                FileItem fileItem = new DiskFileItem("mainFile", Files.probeContentType(file.toPath()), false, file.getName(), (int) file.length(), file.getParentFile());

                InputStream input = new FileInputStream(file);
                OutputStream os2 = fileItem.getOutputStream();
                IOUtils.copy(input, os2);

                MultipartFile multipartFile = new CommonsMultipartFile(fileItem);



                adminService.insertLottoData(multipartFile );
            }catch (Exception e){
                e.printStackTrace();
            }




        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("Fail", HttpStatus.OK);
        }

        return new ResponseEntity<>("Success", HttpStatus.OK);
    }

}
