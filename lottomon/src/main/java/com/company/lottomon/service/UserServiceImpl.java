package com.company.lottomon.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.lottomon.common.Constant.*;
import com.company.lottomon.mapper.UserDAO;
import com.company.lottomon.model.UserInfo;

import javax.servlet.http.HttpSession;

@Service("userService")
public class UserServiceImpl implements UserService{
	Logger log = Logger.getLogger(this.getClass());

	@Autowired
	private UserDAO userDAO;

	@Override
	public ServiceResult insertUser(UserInfo userInfo) {
		userDAO.insert(userInfo);
		return ServiceResult.SUCCESS;
	}

	@Override
	public int findUser(UserInfo userInfo) {
		int userCnt = userDAO.findUser(userInfo);
		return userCnt;
	}

	@Override
	public UserInfo getUserInfo(String id) {
		return userDAO.getUserInfo(id);
	}

	@Override
	public LoginResult loginProc(UserInfo userInfo, HttpSession session) {
		UserInfo result = userDAO.loginProc(userInfo);

		if(result == null){
			return LoginResult.NOT_MATCHE;
		}else if(result.getGrade().equals("02")){
			log.debug(result.toString());
			return LoginResult.DORMANT;
		}else if(result.getGrade().equals("03")){
			log.debug(result.toString());
			return LoginResult.LEAVE;
		}else if(result.getGrade().equals("04")){
			log.debug(result.toString());
			return LoginResult.BENNED;
		}else if(result.getGrade().equals("01") || result.getGrade().equals("99")){
			log.debug(result.toString());

			session.setAttribute("user_id", result.getId());
			session.setAttribute("user_name", result.getName());
			session.setAttribute("user_nickname", result.getNickname());
			session.setAttribute("grade_end_dt", result.getGrade_end_dt());
			session.setAttribute("grade_code", result.getGrade());
			session.setAttribute("role", result.getRole());

			switch (result.getGrade()){
				case "11":
					session.setAttribute("grade_name", "실버 등급");
					break;
				case "12":
					session.setAttribute("grade_name", "골드 등급");
					break;
				case "13":
					session.setAttribute("grade_name", "VIP 등급");
					break;
				case "99":
					session.setAttribute("grade_name", "관리자");
					break;
				default:
					session.setAttribute("grade_name", "일반 회원");
			}
			//세션 유지 시간 1시간
			session.setMaxInactiveInterval(60 * 60);
			return LoginResult.SUCCESS;
		}else{
			return LoginResult.NOT_MATCHE;
		}

	}

	@Override
	public LoginResult snsLoginProc(UserInfo userInfo, HttpSession session) {
		UserInfo result = userDAO.snsLoginProc(userInfo);

		//SNS 로그인 x
		if(result == null){
			//이메일 정보 확인
			result = userDAO.loginChk(userInfo);
		}

		if(result == null){
			return LoginResult.NOT_MATCHE;
		}else if(result.getGrade().equals("02")){
			log.debug(result.toString());
			return LoginResult.DORMANT;
		}else if(result.getGrade().equals("03")){
			log.debug(result.toString());
			return LoginResult.LEAVE;
		}else if(result.getGrade().equals("04")){
			log.debug(result.toString());
			return LoginResult.BENNED;
		}else if(result.getGrade().equals("01") || result.getGrade().equals("99")){
			log.debug(result.toString());

			session.setAttribute("user_id", result.getId());
			session.setAttribute("user_name", result.getName());
			session.setAttribute("user_nickname", result.getNickname());
			session.setAttribute("grade_end_dt", result.getGrade_end_dt());
			session.setAttribute("grade_code", result.getGrade());
			session.setAttribute("role", result.getRole());

			switch (result.getGrade()){
				case "11":
					session.setAttribute("grade_name", "silver");
					break;
				case "12":
					session.setAttribute("grade_name", "gold");
					break;
				case "13":
					session.setAttribute("grade_name", "vip");
					break;
				case "99":
					session.setAttribute("grade_name", "admin");
					break;
				default:
					session.setAttribute("grade_name", "normal");
			}
			//세션 유지 시간 1시간
			session.setMaxInactiveInterval(60 * 60);
			return LoginResult.SUCCESS;
		}else{
			return LoginResult.NOT_MATCHE;
		}

	}


	@Override
	public UserInfo selectId(UserInfo userInfo) {
		return userDAO.selectId(userInfo);
	}

	@Override
	public int insertTempPassword(UserInfo userInfo) {
		return userDAO.insertTempPassword(userInfo);
	}

	@Override
	public int updateTelNo(UserInfo userInfo) {
		return userDAO.updateTelNo(userInfo);
	}


	@Override
	public int getExprieYn(String date) {
		return userDAO.getExprieYn(date);
	}

	@Override
	public int getExprieProc(String date) {
		return userDAO.getExprieProc(date);
	}

	//
	@Override
	public void insertExpireInfo(int cnt) {
		userDAO.insertExpireInfo(cnt);
	}

}
