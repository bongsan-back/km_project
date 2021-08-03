package com.company.lottomon.service;

import com.company.lottomon.mapper.LottoDAO;
import com.company.lottomon.model.Board;
import com.company.lottomon.model.LottoData;
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
	public List<MyLotto> selectThisWeeksNumberList(MyLotto myLotto) {
		return lottoDAO.selectThisWeeksNumberList(myLotto);
	}

	@Override
	public LottoData selectData() {
		return lottoDAO.selectData();
	}

	@Override
	public LottoData selectData(LottoData lottoData) {
		return lottoDAO.selectData(lottoData);
	}

}
