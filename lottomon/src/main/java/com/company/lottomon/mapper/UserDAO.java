package com.company.lottomon.mapper;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.lottomon.model.UserInfo;

@Repository
public class UserDAO {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	/**
     * 게시물 추가 하기
     * @param userInfo	추가 할 게시물 정보
     * @return
     */
    public void insert(UserInfo userInfo) {
    	sqlSession.insert("user.insertUser", userInfo);
	}
    
    
}
