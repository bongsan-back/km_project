package com.company.lottomon.mapper;

import com.company.lottomon.model.LottoData;
import com.company.lottomon.model.UserInfo;
import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDAO {

	@Autowired 
	private SqlSessionTemplate sqlSession;

	/**
	 * 로또 데이터 insert or update
	 * @param list	추가 할 게시물 정보
	 * @return
	 */
	public int lottoDataUpdate(List<LottoData> list) {
		return sqlSession.update("admin.lottoDataUpdate", list);
	}
}
