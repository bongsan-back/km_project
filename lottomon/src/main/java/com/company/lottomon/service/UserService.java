package com.company.lottomon.service;

import com.company.lottomon.common.Constant.ServiceResult;
import com.company.lottomon.model.UserInfo;

public interface UserService {
	ServiceResult insertUser(UserInfo userInfo);
	int findUser(UserInfo userInfo);
}
