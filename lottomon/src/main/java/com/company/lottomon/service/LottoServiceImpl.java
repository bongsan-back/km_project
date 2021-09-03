package com.company.lottomon.service;

import com.company.lottomon.mapper.LottoDAO;
import com.company.lottomon.model.Board;
import com.company.lottomon.model.LottoData;
import com.company.lottomon.model.LottoPlace;
import com.company.lottomon.model.MyLotto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("lottoService")
public class LottoServiceImpl implements LottoService{
	
	@Autowired
	private LottoDAO lottoDAO;

	@Override
	public int selectThisWeeksNumberListCount() {
		return lottoDAO.selectThisWeeksNumberListCount();
	}

	@Override
	public int selectLastDrwNo() {
		return lottoDAO.selectLastDrwNo();
	}

	@Override
	public int selectPlaceData() {
		return lottoDAO.selectPlaceData();
	}

	@Override
	public List<MyLotto> selectThisWeeksNumberList(MyLotto myLotto) {
		return lottoDAO.selectThisWeeksNumberList(myLotto);
	}

	@Override
	public List<LottoData> select3WeeksNumberList() {
		return lottoDAO.select3WeeksNumberList();
	}

	@Override
	public List<LottoData> selectOrderingNo1() {
		return lottoDAO.selectOrderingNo1();
	}

	@Override
	public List<LottoPlace> selectPlaceList() {
		return lottoDAO.selectPlaceList();
	}

	@Override
	public LottoData selectData() {
		return lottoDAO.selectData();
	}

	@Override
	public LottoData selectData(LottoData lottoData) {
		return lottoDAO.selectData(lottoData);
	}

	@Override
	public void insertLottoPlaceData(List<LottoPlace> lottoPlace) {
		lottoDAO.insertLottoPlaceData(lottoPlace);
	}

	@Override
	public void insertLottoData(LottoData lottoData) {
		lottoDAO.insertLottoData(lottoData);
	}

}
