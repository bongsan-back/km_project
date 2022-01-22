package com.company.lottomon.mapper;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.lottomon.model.UserInfo;

import java.util.List;

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
		return sqlSession.selectOne("user.getUserId", id);
	}

	/**
	 * 로그인 확인
	 * @return
	 */
	public List<UserInfo> getUserInfo() {
		return sqlSession.selectList("user.getUserInfoList");
	}

	/**
	 * 로그인 확인
	 * @param userInfo	유저 정보
	 * @return
	 */
	public UserInfo loginProc(UserInfo userInfo) {
		return sqlSession.selectOne("user.loginProc", userInfo);
	}

	/**
	 * SNS 로그인 확인
	 * @param userInfo	유저 정보
	 * @return
	 */
	public UserInfo snsLoginProc(UserInfo userInfo) {
		return sqlSession.selectOne("user.snsLoginProc", userInfo);
	}

	/**
	 * SNS > Email 로그인 확인
	 * @param userInfo	유저 정보
	 * @return
	 */
	public UserInfo loginChk(UserInfo userInfo) {
		return sqlSession.selectOne("user.loginChk", userInfo);
	}

	/**
	 * 유저 등급 변경
	 * @return
	 */
	public void changeGrade(UserInfo userInfo) {
		sqlSession.update("user.changeGrade", userInfo);
	}

	/**
	 * 아이디 찾기
	 * @return
	 */
	public UserInfo selectId(UserInfo userInfo) {
		return sqlSession.selectOne("user.getUserInfo", userInfo);
	}

	/**
	 * 임시 비밀번호 설정
	 * @return
	 */
	public int insertTempPassword(UserInfo userInfo) {
		return sqlSession.update("user.insertTempPassword", userInfo);
	}

	/**
	 * 유저 등급 다운 유무
	 * @return
	 */
	public int getExprieYn(String date) {
		return sqlSession.selectOne("user.getExprieYn", date);
	}

	/**
	 * 유저 등급 다운 유무
	 * @return
	 */
	public int getExprieProc(String date) {
		return sqlSession.update("user.getExprieProc", date);
	}

	/**insertExpireInfo
	 * 유저 등급 다운 유무
	 * @return
	 */
	public int insertExpireInfo(int cnt) {
		return sqlSession.insert("user.insertExpireInfo", cnt);
	}

}
