package com.company.lottomon.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.company.lottomon.common.Constant;
import com.company.lottomon.encrypt.AES256;
import com.company.lottomon.model.MembershipPrice;
import com.company.lottomon.model.UserInfo;
import com.company.lottomon.result.LMServiceParam;
import com.company.lottomon.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/login")
@Component
public class LoginController {
    Logger log = Logger.getLogger(this.getClass());

    @Autowired
    @Resource(name = "userService")
    private UserService userService;

    static private AES256 AES = new AES256("LOTTOMON01234567");

    /**
     * 멤버쉽 금액 조회
     */

    @RequestMapping(value = "/loginProc.do", method = RequestMethod.POST)
    public @ResponseBody
    Object smsCert(@RequestBody LMServiceParam<UserInfo> param, HttpServletRequest request, HttpSession session) {
        try {

            log.debug(param.getData());
            UserInfo userInfo = param.getData();
            userInfo.setPassword(AES.encryptStringToBase64(userInfo.getPassword()));

            Constant.LoginResult result = userService.loginProc(userInfo, session);

            return result;
        } catch (Exception e) {

            e.printStackTrace();
            return Constant.ServiceResult.FAIL;
            // TODO: handle exception
        }
    }
}
