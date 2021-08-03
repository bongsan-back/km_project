package com.company.lottomon.service;

import com.company.lottomon.model.LottoData;
import com.company.lottomon.model.MyLotto;

import java.util.List;

public interface LottoService {
	int selectThisWeeksNumberListCount();
	List<MyLotto> selectThisWeeksNumberList(MyLotto myLotto);
	LottoData selectData();
	LottoData selectData(LottoData lottoData);
}
