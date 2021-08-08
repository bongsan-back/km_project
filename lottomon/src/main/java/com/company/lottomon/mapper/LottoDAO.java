package com.company.lottomon.mapper;

import com.company.lottomon.model.Board;
import com.company.lottomon.model.LottoData;
import com.company.lottomon.model.LottoPlace;
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
     * 마지막 회차 가져오기
     * @return
     */
    public int selectLastDrwNo() {
        return sqlSession.selectOne("lotto.selectLastDrwNo");
    }

    /**
     * 마지막 회차 가져오기
     * @return
     */
    public int selectPlaceData() {
        return sqlSession.selectOne("lotto.selectPlaceData");
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
     * 최근 3주 로또 데이터 가져오기
     * @return
     */
    public List<LottoData> select3WeeksNumberList() {
        return sqlSession.selectList("lotto.select3WeeksNumberList");
    }
    /**
     * 역대 1등 당첨금 순위 5개
     * @return
     */
    public List<LottoData> selectOrderingNo1() {
        return sqlSession.selectList("lotto.selectOrderingNo1");
    }

    /**
     * 1등 최근 결과 구매 지역
     * @return
     */
    public List<LottoPlace> selectPlaceList() {
        return sqlSession.selectList("lotto.selectPlaceList");
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

    /**
     * 로또정보 가져오기
     * @return void
     */
    public void insertLottoPlaceData(List<LottoPlace> list) {
        sqlSession.update("lotto.insertLottoPlaceData", list);
    }


}
