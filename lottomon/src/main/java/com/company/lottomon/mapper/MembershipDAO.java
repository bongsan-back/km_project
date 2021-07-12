package com.company.lottomon.mapper;

import java.util.List;

import com.company.lottomon.model.Membership;
import com.company.lottomon.model.MembershipPrice;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.lottomon.model.Board;
import com.company.lottomon.model.UserInfo;

@Repository
public class MembershipDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;
    /**
     * 멤버쉽 리스트 가져오기
     * @return List
     */
    public List<Membership> selectList() {
        return sqlSession.selectList("membership.selectList");
    }

    /**
     * 멤버쉽 가격 리스트 가져오기
     * @return List
     */
    public List<MembershipPrice> getPrice() {
        return sqlSession.selectList("membership.getPrice");
    }


    /**
     * 멤버쉽 가격 리스트 가져오기
     * @return List
     */
    public MembershipPrice selectOnePrice(MembershipPrice membershipPrice) {
        return (MembershipPrice) sqlSession.selectOne("membership.selectOnePrice", membershipPrice);
    }



}
