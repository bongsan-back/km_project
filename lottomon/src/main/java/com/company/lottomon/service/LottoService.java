package com.company.lottomon.service;

import com.company.lottomon.model.LottoData;

import java.util.List;

public interface LottoService {
	LottoData selectData();
	LottoData selectData(LottoData lottoData);
}
