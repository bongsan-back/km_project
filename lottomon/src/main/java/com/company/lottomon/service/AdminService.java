package com.company.lottomon.service;

import com.company.lottomon.common.Constant.*;
import com.company.lottomon.model.Board;
import com.company.lottomon.model.UserInfo;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface AdminService {
	ServiceResult insertLottoData(MultipartFile excelFile);
	List<UserInfo> selectUserInfo();
	void changeGrade(UserInfo userInfo);
}
