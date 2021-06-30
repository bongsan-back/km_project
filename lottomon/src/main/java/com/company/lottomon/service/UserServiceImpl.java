package com.company.lottomon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.lottomon.common.Constant.ServiceResult;
import com.company.lottomon.mapper.UserDAO;
import com.company.lottomon.model.UserInfo;

@Service("userService")
public class UserServiceImpl implements UserService{
	
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
}
