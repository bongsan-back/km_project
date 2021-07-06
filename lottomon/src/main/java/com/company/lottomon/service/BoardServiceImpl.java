package com.company.lottomon.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.lottomon.common.Constant.ServiceResult;
import com.company.lottomon.mapper.BoardDAO;
import com.company.lottomon.mapper.UserDAO;
import com.company.lottomon.model.Board;
import com.company.lottomon.model.UserInfo;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<HashMap<String,Object>> selectList(Board board) {
		return boardDAO.selectList(board);
	}
	
}
