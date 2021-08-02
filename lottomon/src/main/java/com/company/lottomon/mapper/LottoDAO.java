package com.company.lottomon.mapper;

import com.company.lottomon.model.LottoData;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LottoDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;

    /**
     * 로또정보 가져오기
     * @return List
     */
    public LottoData selectData() {
        return sqlSession.selectOne("lotto.select");
    }

    /**
     * 로또정보 가져오기
     * @return List
     */
    public LottoData selectData(LottoData lottoData) {
        return sqlSession.selectOne("lotto.selectNo", lottoData);
    }


}
