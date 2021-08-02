package com.company.lottomon.service;

import com.company.lottomon.common.Constant.*;
import com.company.lottomon.model.Board;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface AdminService {
	ServiceResult insertLottoData(MultipartFile excelFile);
}
