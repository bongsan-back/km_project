package com.company.lottomon.service;

import com.company.lottomon.common.Constant.*;
import com.company.lottomon.model.UserInfo;

import javax.servlet.http.HttpSession;

public interface UserService {
	ServiceResult insertUser(UserInfo userInfo);
	int findUser(UserInfo userInfo);
	LoginResult loginProc(UserInfo userInfo, HttpSession session);
	LoginResult snsLoginProc(UserInfo userInfo, HttpSession session);
	UserInfo getUserInfo(String id);
}
