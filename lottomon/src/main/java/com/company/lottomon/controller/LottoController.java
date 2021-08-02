package com.company.lottomon.controller;

import com.company.lottomon.encrypt.AES256;
import com.company.lottomon.model.LottoData;
import com.company.lottomon.model.UserInfo;
import com.company.lottomon.result.LMServiceParam;
import com.company.lottomon.service.LottoService;
import org.apache.log4j.Logger;
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
