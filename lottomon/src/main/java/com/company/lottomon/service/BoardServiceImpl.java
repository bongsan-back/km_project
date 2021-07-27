package com.company.lottomon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.lottomon.mapper.BoardDAO;
import com.company.lottomon.model.Board;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public int selectListCount(Board board) {
		return boardDAO.selectListCount(board);
	}

	@Override
	public List<Board> selectList(Board board) {
		return boardDAO.selectList(board);
	}

	@Override
	public List<Board> selectPostBoard(Board board) {
		return boardDAO.selectPostBoard(board);
	}

	@Override
	public List<Board> selectPostBoardDetail(Board board) { return boardDAO.selectPostBoardDetail(board); }

}
