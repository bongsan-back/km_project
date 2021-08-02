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
     * 유저 회원가입
     * @param userInfo	유저 정보
     * @return
     */
    public void insert(UserInfo userInfo) {
    	sqlSession.insert("user.insertUser", userInfo);
	}
    
	/**
     * 유저 정보가 있는지 유무 (count)
     * @param userInfo	유저 정보
     * @return
     */
    public int findUser(UserInfo userInfo) {
    	return sqlSession.selectOne("user.findUser", userInfo);
	}

	/**
	 * 로그인 확인
	 * @param id	유저 아이디
	 * @return
	 */
	public UserInfo getUserInfo(String id) {
		return sqlSession.selectOne("user.getUserInfo", id);
	}

	/**
	 * 로그인 확인
	 * @param userInfo	유저 정보
	 * @return
	 */
	public UserInfo loginProc(UserInfo userInfo) {
		return sqlSession.selectOne("user.loginProc", userInfo);
	}
}
