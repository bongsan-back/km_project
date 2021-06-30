package com.company.lottomon.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.lottomon.model.Board;
import com.company.lottomon.model.UserInfo;

@Repository
public class BoardDAO {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	/**
     * 게시물 리스트 가져오기
     * @param userInfo	추가 할 게시물 정보
     * @return
     */
    public List<Board> selectList(Board board) {
    	return sqlSession.selectList("board.selectList", board);
	}
    
    
}
