package com.company.lottomon.mapper;

import com.company.lottomon.model.Board;
import com.company.lottomon.model.LottoData;
import com.company.lottomon.model.MyLotto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LottoDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;

    /**
     * 게시물 개수 가져오기
     * @return
     */
    public int selectThisWeeksNumberListCount() {
        return sqlSession.selectOne("lotto.selectThisWeeksNumberListCount");
    }

    /**
     * 이번주 나의 번호 리스트 가져오기
     * @param mylotto	추가 할 게시물 정보
     * @return
     */
    public List<MyLotto> selectThisWeeksNumberList(MyLotto mylotto) {
        return sqlSession.selectList("lotto.selectThisWeeksNumberList", mylotto);
    }

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
