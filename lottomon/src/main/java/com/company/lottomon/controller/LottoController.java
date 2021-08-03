package com.company.lottomon.controller;

import com.company.lottomon.common.Constant;
import com.company.lottomon.encrypt.AES256;
import com.company.lottomon.model.Board;
import com.company.lottomon.model.LottoData;
import com.company.lottomon.model.MyLotto;
import com.company.lottomon.model.UserInfo;
import com.company.lottomon.result.LMServiceParam;
import com.company.lottomon.service.LottoService;
import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/lotto")
@Component
public class LottoController {
    Logger log = Logger.getLogger(this.getClass());

    @Autowired
    @Resource(name = "lottoService")
    private LottoService lottoService;

    static private AES256 AES = new AES256("LOTTOMON01234567");

    /**
     * 이번주 나의번호 페이지
     */
    @RequestMapping(value = "/thisWeeksNumber.do", method = RequestMethod.GET)
    public String bulletin(Model model) {
        int listCnt = lottoService.selectThisWeeksNumberListCount();

        try {
            model.addAttribute("listCnt", listCnt); //리스트 수
            model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
            model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
            model.addAttribute("type", Constant.menuCodeType.THISWEEKSNUMBER.getTypeValue()); //게시판 type
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "mylotto/thisWeeksNumber";
    }

    /**
     * 이번주 나의번호 내용 검색
     */
    @RequestMapping(value = "/searchContent.do", method = RequestMethod.POST)
    public @ResponseBody ResponseEntity<List<MyLotto>> searchBoardContent(@RequestBody MyLotto myLotto, Model model) {
        myLotto.setStart_row_num((myLotto.getCurrent_page()-1) * myLotto.getPost_num_base_cnt()); //페이징 시작 번호 수 설정

        List<MyLotto> list = lottoService.selectThisWeeksNumberList(myLotto);

        try {
            model.addAttribute("list", new ObjectMapper().writeValueAsString(list));
        } catch (Exception e) {
            e.printStackTrace();
        }

        return new ResponseEntity<>(list, HttpStatus.OK);
    }

    /**
     * 로또 데이터 셀렉트 해오기
     */
    @SuppressWarnings("resource")
    @RequestMapping(value = "/lottoDataSelect.do", method = RequestMethod.POST)
    public @ResponseBody Object lottoDataSelect(@RequestBody LMServiceParam<LottoData> param, HttpServletRequest request, HttpSession session, Model model) throws Exception{
        try {
            System.out.println(param.getData());
            LottoData lottoData = lottoService.selectData(param.getData());

            model.addAttribute("lottoData", lottoData);

            return new ResponseEntity<Object>(lottoData, HttpStatus.OK);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseEntity<Object>("FAIL", HttpStatus.OK);
        }
    }

}
