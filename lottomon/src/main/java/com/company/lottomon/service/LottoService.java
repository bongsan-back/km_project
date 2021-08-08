package com.company.lottomon.service;

import com.company.lottomon.model.LottoData;
import com.company.lottomon.model.LottoPlace;
import com.company.lottomon.model.MyLotto;

import java.util.List;

public interface LottoService {
	int selectThisWeeksNumberListCount();
	int selectLastDrwNo();
	int selectPlaceData();
	List<MyLotto> selectThisWeeksNumberList(MyLotto myLotto);
	List<LottoData> select3WeeksNumberList();
	List<LottoData> selectOrderingNo1();
	List<LottoPlace> selectPlaceList();
	LottoData selectData();
	LottoData selectData(LottoData lottoData);
	void insertLottoPlaceData(List<LottoPlace> lottoPlace);
}
