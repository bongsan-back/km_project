package com.company.lottomon.controller;

import com.company.lottomon.common.Constant;
import com.company.lottomon.encrypt.AES256;
import com.company.lottomon.model.UserInfo;
import com.company.lottomon.result.LMServiceParam;
import com.company.lottomon.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/admin")
@Component
public class AdminController {
    Logger log = Logger.getLogger(this.getClass());

    @Autowired
    @Resource(name = "userService")
    private UserService userService;

    static private AES256 AES = new AES256("LOTTOMON01234567");

    /**
     * 관리자 페이지 intro 페이지 확인
     */
    @RequestMapping(value = "/main.do", method = RequestMethod.GET)
    public String main(HttpServletRequest request, HttpSession session) {
        log.debug(session.getAttribute("user_id") + "세션 아이디입니다.");
        System.out.println(session.getAttribute("user_id") + "세션 아이디입니다.");

        return "admin/adminMain";
    }

    /**
     * 관리자 페이지 user 페이지 확인
     */
    @RequestMapping(value = "/user.do", method = RequestMethod.GET)
    public String user(HttpServletRequest request, HttpSession session) {

        return "admin/user";
    }
    /**
     * 관리자 페이지 lotto 관리 페이지 확인
     */
    @RequestMapping(value = "/lotto.do", method = RequestMethod.GET)
    public String lotto(HttpServletRequest request, HttpSession session) {

        return "admin/lotto";
    }

}
