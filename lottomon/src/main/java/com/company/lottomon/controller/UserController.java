package com.company.lottomon.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.company.lottomon.common.Utils;
import com.company.lottomon.encrypt.AES256;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.lottomon.common.Constant;
import com.company.lottomon.common.Constant.ServiceResult;
import com.company.lottomon.model.UserInfo;
import com.company.lottomon.result.LMServiceParam;
import com.company.lottomon.service.UserService;

@Controller
@RequestMapping(value = "/user")
@Component
public class UserController {
	Logger log = Logger.getLogger(this.getClass());

	@Autowired
	@Resource(name = "userService")
	private UserService userService;

	static private AES256 AES = new AES256("LOTTOMON01234567");

	/**
     * 회원 가입 최종
     */
    @RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public @ResponseBody ServiceResult smsCert(@RequestBody LMServiceParam<UserInfo> param, HttpServletRequest request, HttpSession session) {
    	try {

    		UserInfo userInfo = param.getData();
    		userInfo.setPassword(AES.encryptStringToBase64(userInfo.getPassword()));

    		userService.insertUser(userInfo);

		} catch (Exception e) {

			e.printStackTrace();
			return ServiceResult.FAIL;
			// TODO: handle exception
		}

		return ServiceResult.SUCCESS;
	}


    /**
     * 회원 가입 최종
     */
    @RequestMapping(value = "/verifyUser.do", method = RequestMethod.POST)
	public @ResponseBody ServiceResult verifyId(@RequestBody LMServiceParam<UserInfo> param, HttpServletRequest request, HttpSession session) {
    	try {
    		int verifyCnt = userService.findUser(param.getData());
    		if(verifyCnt > 0 ) {
    			return ServiceResult.ALREADY_DATA;
    		}else{
    			return ServiceResult.SUCCESS;
    		}
		} catch (Exception e) {
			e.printStackTrace();
			return ServiceResult.FAIL;
			// TODO: handle exception
		}
	}

	/**
	 * 아이디 찾기
	 */
	@RequestMapping(value = "/findUserId.do", method = RequestMethod.POST)
	public @ResponseBody Object findUserId(@RequestBody LMServiceParam<UserInfo> param, HttpServletRequest request, HttpSession session) {
		UserInfo userInfo = param.getData();
		try {
			userInfo = userService.selectId(userInfo);
		} catch (Exception e) {
			e.printStackTrace();
			return ServiceResult.FAIL;
		}
		return userInfo;
	}

	/**
	 * 임시비밀번호 등록
	 */
	@RequestMapping(value = "/findUserPw.do", method = RequestMethod.POST)
	public @ResponseBody Object findUserPw(@RequestBody LMServiceParam<UserInfo> param, HttpServletRequest request, HttpSession session) {
		UserInfo userInfo = param.getData();
		try {
			userInfo = userService.selectId(userInfo);

			if(userInfo != null){
				String tempPassword = Utils.getTempPassword(8);
				userInfo.setIncPassword(AES.encryptStringToBase64(tempPassword));
				userService.insertTempPassword(userInfo);
				userInfo.setTempPassword(tempPassword);
			}else return null;
		} catch (Exception e) {
			e.printStackTrace();
			return ServiceResult.FAIL;
		}
		return userInfo;
	}





}
