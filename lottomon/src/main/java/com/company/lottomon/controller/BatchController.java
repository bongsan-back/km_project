package com.company.lottomon.controller;

import com.company.lottomon.common.HtmlCrawling;
import com.company.lottomon.model.LottoPlace;
import com.company.lottomon.service.LottoService;
import org.apache.ibatis.annotations.Param;
import org.apache.log4j.Logger;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@Component
public class BatchController {
    Logger log = Logger.getLogger(this.getClass());

    @Autowired
    @Resource(name = "lottoService")
    private LottoService lottoService;

    /**
     * 로또 1등 당첨 정보
     */
    @RequestMapping(value = "/batch/placeStore.do", method = RequestMethod.GET)
    public @ResponseBody
    ResponseEntity<Object> placeStore(Model model) {
        try {

            for (int j = 1; j < 970; j++) {



            int lastDrwNo = j;
            //int lastPlaceDrwNo = lottoService.selectPlaceData();

            /*if(lastDrwNo == lastPlaceDrwNo){
                return new ResponseEntity<>("alreayProc", HttpStatus.OK);
            }*/
            String param = "&drwNo=" + lastDrwNo;
            String url = "https://dhlottery.co.kr/store.do?method=topStore&pageGubun=L645"+param;

            HtmlCrawling hc = new HtmlCrawling();

            Document doc = (Document) hc.getHtml(url);
            Elements mElementDatas = doc.select(".tbl_data_col").eq(0).select("tr");
            LottoPlace lp = new LottoPlace();



            List<LottoPlace> placeList = new ArrayList<>();
            for (Element ele : mElementDatas){
                Elements tdList = ele.select("td");
                if(tdList.get(0).text().contains("조회 결과가")){
                    continue;
                }else{
                    for (int i = 0; i < tdList.size(); i++) {
                        lp.setDrwNo(lastDrwNo);
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
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("Fail", HttpStatus.OK);
        }

        return new ResponseEntity<>("Success", HttpStatus.OK);
    }
}
