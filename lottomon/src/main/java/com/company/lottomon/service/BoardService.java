package com.company.lottomon.service;

import java.util.List;

import com.company.lottomon.model.Board;

public interface BoardService {
	int selectListCount(Board board);
	List<Board> selectList(Board board);
	List<Board> selectPostBoard(Board board);
	List<Board> selectPostBoardDetail(Board board);
}
