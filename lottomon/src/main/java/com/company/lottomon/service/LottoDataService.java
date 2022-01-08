package com.company.lottomon.service;

import com.company.lottomon.common.HtmlCrawling;
import com.company.lottomon.model.LottoData;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component
public class LottoDataService {

    public void latestLottoData(){
        LottoService lottoService = new LottoServiceImpl();
        int serveLatestDrw = lottoService.selectLastDrwNo();
        int dhLatestDrw = crawlingDrwno();

        if(serveLatestDrw != dhLatestDrw){
            for (int i = serveLatestDrw; i <= dhLatestDrw; i++) {
                latestInsertDrw(i);
            }
        }

    }

    private int crawlingDrwno(){
        try {
            String url = "https://dhlottery.co.kr/gameResult.do?method=byWin";

            HtmlCrawling hc = new HtmlCrawling();
            Document doc = (Document) hc.getHtml(url);

            LottoData ld = new LottoData();

            //당첨 금액, 인원수 추출
            Elements drwNoEle = doc.select(".win_result").eq(0).select("strong");
            String drwNo = drwNoEle.get(0).text();

            /*Elements drwDate = doc.select(".desc");
            for  (Element ele : drwDate){
                String date = ele.text().substring(1,13).replaceAll("년 ", ".").replaceAll("월 ", ".");
                ld.setDwr_dt(date);
            }
            System.out.println(ld);
*/
            //당첨 번호 추출

            return Integer.parseInt(drwNo);
        } catch (Exception e) {
            e.printStackTrace();
            //return new ResponseEntity<>("Fail", HttpStatus.OK);
        }
        //return new ResponseEntity<>("Success", HttpStatus.OK);
        return 0;
    }

    public void latestInsertDrw(int insertDrw){
        LottoService lottoService = new LottoServiceImpl();
        try {
            String param = "&drwNo="+insertDrw;
            String url = "https://dhlottery.co.kr/gameResult.do?method=byWin" + param;

            HtmlCrawling hc = new HtmlCrawling();
            Document doc = (Document) hc.getHtml(url);

            LottoData ld = new LottoData();

            //당첨 금액, 인원수 추출
            Elements mElementDatas = doc.select(".tbl_data_col").eq(0).select("tr");
            int i = 0;
            ld.setDrwNo(insertDrw);
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

            System.out.println(insertDrw +" 회차 정보 저장 성공");

            //당첨 번호 추출
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
