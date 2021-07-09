package com.company.lottomon.controller;

import com.company.lottomon.common.Constant;
import com.company.lottomon.model.Board;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.lottomon.service.BoardService;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping(value = "/board")
@Component
public class BoardController {
	@Autowired
	@Resource(name = "boardService")
	private BoardService boardService;

	/**
	 * 자유게시판 페이지
	 */
	@RequestMapping(value = "/searchBoardContent.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<List<Board>> searchBoardContent(@RequestBody Board board, Model model) {
		board.setType(Constant.boardCodeType.BULLETIN.getTypeValue()); //게시판 종류
		board.setStart_row_num((board.getCurrent_page()-1) * board.getPost_num_base_cnt()); //페이징 시작 번호 수 설정

		List<Board> list = boardService.selectList(board);

		try {
			model.addAttribute("list", new ObjectMapper().writeValueAsString(list));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity<>(list, HttpStatus.OK);
	}

}
