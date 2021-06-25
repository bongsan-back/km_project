package com.company.lottomon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class ViewController {

    /**
     * 로그인 페이지
     */
    @RequestMapping(value = "/Login/login.do", method = RequestMethod.GET)
    public String login(HttpServletRequest request, HttpSession session) {

        return "login/login";
    }
    
    /**
     * 회원 가입 약관 동의 페이지 호출
     */
    @RequestMapping(value = "/Login/joinAgree.do", method = RequestMethod.GET)
    public String join(HttpServletRequest request, HttpSession session) {

        return "login/joinAgree";
    }
    
    /**
     * 회원 가입 정보 입력 페이지 호출
     */
    @RequestMapping(value = "/Login/joinInfo.do", method = RequestMethod.GET)
    public String joininfo(HttpServletRequest request, HttpSession session) {

        return "login/joinInfo";
    }
    
    /**
     * 회원 정보 찾기 페이지
     */
    @RequestMapping(value = "/Login/findUser.do", method = RequestMethod.GET)
    public String findUser(HttpServletRequest request, HttpSession session) {

        return "login/findUser";
    }



}
