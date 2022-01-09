package com.company.lottomon.service;

import java.util.List;

import com.company.lottomon.model.Board;
import com.company.lottomon.model.BoardComment;

public interface BoardService {
	int selectListCount(Board board);
	List<Board> selectList(Board board);
	List<Board> selectPostBoard(Board board);
	List<Board> selectPostBoardDetail(Board board);
	int insertBoardContent(Board board);
	int deleteBoardContent(int seq);
	int updateBoardViewUp(int seq);
	int insertBoardCommentContent(BoardComment boardComment);
	int editBoardCommentContent(BoardComment boardComment);
	int deleteBoardCommentContent(int seq);
}
