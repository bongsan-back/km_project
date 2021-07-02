package com.company.lottomon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.lottomon.service.BoardService;
import com.company.lottomon.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/board")
@Component
public class BoardController {

	
	@Autowired
	@Resource(name = "boardService")
	private BoardService boardService;
    /**
     * 자유게시판 페이지
     */
	/*
	 * @RequestMapping(value = "/login.do", method = RequestMethod.GET) public
	 * String login(HttpServletRequest request, HttpSession session) {
	 * 
	 * return "/login/login"; }
	 */



}
