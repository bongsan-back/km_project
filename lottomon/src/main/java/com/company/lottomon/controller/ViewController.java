package com.company.lottomon.controller;

import com.company.lottomon.common.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.lottomon.common.Constant.boardCodeType;
import com.company.lottomon.model.Board;
import com.company.lottomon.service.BoardService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@Component
public class ViewController {

	@Autowired
	BoardService boardService;
	
    /**
     * 로그인 페이지
     */
    @RequestMapping(value = "/login/login.do", method = RequestMethod.GET)
    public String login(HttpServletRequest request, HttpSession session) {

        return "login/login";
    }
    
    /**
     * 회원 가입 약관 동의 페이지 호출
     */
    @RequestMapping(value = "/login/joinAgree.do", method = RequestMethod.GET)
    public String join(HttpServletRequest request, HttpSession session) {

        return "login/joinAgree";
    }
    
    /**
     * 회원 가입 정보 입력 페이지 호출
     */
    @RequestMapping(value = "/login/joinInfo.do", method = RequestMethod.GET)
    public String joininfo(HttpServletRequest request, HttpSession session) {

        return "login/joinInfo";
    }
    
    /**
     * 회원 정보 찾기 페이지
     */
    @RequestMapping(value = "/login/findUser.do", method = RequestMethod.GET)
    public String findUser(HttpServletRequest request, HttpSession session) {

        return "login/findUser";
    }
    
    /**
     * 회원 가입 완료
     */
    @RequestMapping(value = "/login/joinSuc.do", method = RequestMethod.GET)
    public String joinSuc(HttpServletRequest request, HttpSession session) {

        return "login/joinSuc";
    }
}
