package com.company.lottomon.service;

import java.util.HashMap;
import java.util.List;

import com.company.lottomon.model.Board;

public interface BoardService {
	List<HashMap<String,Object>> selectList(Board board);
}
