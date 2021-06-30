package com.company.lottomon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.lottomon.common.Constant.ServiceResult;
import com.company.lottomon.mapper.UserDAO;
import com.company.lottomon.model.UserInfo;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO userMapper;

	@Override
	public ServiceResult insertUser(UserInfo userInfo) {
		userMapper.insert(userInfo);
		return ServiceResult.SUCCESS;
	}
}
