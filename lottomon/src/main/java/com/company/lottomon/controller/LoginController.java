package com.company.lottomon.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	
	
	/**
     * 회원 가입 페이지 호출
     */
    @RequestMapping(value = "/Login/findUserxx.do", method = RequestMethod.GET)
    public String findUser(HttpServletRequest request, HttpSession session) {


        return "login/findUser";

    }
}
