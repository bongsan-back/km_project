package com.company.lottomon.service;

import java.util.List;

import com.company.lottomon.model.Board;

public interface BoardService {
	List<Board> selectList(Board board);
}
