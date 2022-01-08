package com.company.lottomon.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.lottomon.model.Board;

@Repository
public class BoardDAO {

	@Autowired 
	private SqlSessionTemplate sqlSession;

	/**
     * 게시물 개수 가져오기
     * @param board 게시물 Count
     * @return
     */
    public int selectListCount(Board board) {
    	return sqlSession.selectOne("board.selectListCount", board);
	}
	/**
     * 게시물 리스트 가져오기
     * @param board	추가 할 게시물 정보
     * @return
     */
    public List<Board> selectList(Board board) {
    	return sqlSession.selectList("board.selectList", board);
	}
	/**
     * 게시물 내용 가져오기
     * @param board	추가 할 게시물 정보
     * @return
     */
    public List<Board> selectPostBoard(Board board) {
    	return sqlSession.selectList("board.selectPostBoard", board);
	}
	/**
     * 게시물의 댓글 가져오기
     * @param board	추가 할 게시물 정보
     * @return
     */
    public List<Board> selectPostBoardDetail(Board board) {
    	return sqlSession.selectList("board.selectPostBoardDetail", board);
	}
	/**
     * 게시물 Insert
     * @param board Insert 할 게시물 정보
     * @return
     */
    public int insertBoardContent(Board board) {
    	return sqlSession.insert("board.insertBoardContent", board);
	}
	/**
     * 게시물 Delete
     * @param seq Insert 할 게시물 정보
     * @return
     */
    public int deleteBoardContent(int seq) {
    	return sqlSession.delete("board.deleteBoardContent", seq);
	}
	/**
	 * 게시물 조회수 Update
	 * @param seq viewUp 할 게시물 seq
	 * @return
	 */
    public int updateBoardViewUp(int seq) {
		return sqlSession.update("board.updateBoardViewUp", seq);
    }
	/**
     * 댓글 Insert
     * @param boardComment Insert 할 댓글 정보
     * @return
     */
    public int insertBoardCommentContent(Board.Comment boardComment) {
    	return sqlSession.insert("board.insertBoardCommentContent", boardComment);
	}
	/**
     * 댓글 Edit
     * @param boardComment edit 할 댓글 정보
     * @return
     */
    public int editBoardCommentContent(Board.Comment boardComment) {
    	return sqlSession.insert("board.editBoardCommentContent", boardComment);
	}
	/**
     * 댓글 Delete
     * @param seq Insert 할 댓글 정보
     * @return
     */
    public int deleteBoardCommentContent(int seq) {
    	return sqlSession.delete("board.deleteBoardCommentContent", seq);
	}
}
