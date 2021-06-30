package com.company.lottomon.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.lottomon.result.*;
import com.company.lottomon.model.*;

@Controller
@RequestMapping("/auth")
public class AuthController {
	
	
	/**
     * 회원 가입 페이지 호출
     */
	/*
	 * @RequestMapping(value = "/smsCert.do", method = RequestMethod.GET) public
	 * Object smsCert(HttpServletRequest request, HttpSession session) {
	 * 
	 * 
	 * return "login/findUser";
	 * 
	 * }
	 */
    
    @RequestMapping(value = "/smsCert.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<Object> smsCert(@RequestBody LMServiceParam<UserInfo> param, HttpServletRequest request, HttpSession session) {
    	
    	System.out.println("test");
    	
    	
    	session.setAttribute("temp_telNo", param.getData().getTelNo());
		//인증번호 발송
		String randomNumeric = RandomStringUtils.randomNumeric(6);
		String message  = "[" + randomNumeric + "] 인증번호를 입력해주세요. - mediage";
		SimpleDateFormat sdf = new SimpleDateFormat ( "yyyyMMddHHmmss");
		Date dt = new Date();
		//인증번호 및 인증번호 발급시간 세션 저장
		session.setAttribute("randomNumeric" , randomNumeric);
		session.setAttribute("ranNumSetTime" , sdf.format(dt));
		 
		
    	System.out.println(param.getData().getName());
    	
    	
    	//TODO: 인증번호 SMS 발송 기능
    	
		return null;
	}
}
