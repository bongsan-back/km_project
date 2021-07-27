package com.company.lottomon.controller;

import com.company.lottomon.common.Constant;
import com.company.lottomon.model.Board;
import com.sun.org.apache.bcel.internal.Const;
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
	BoardService boardService;

	/**
	 * 자유게시판 페이지
	 */
	@RequestMapping(value = "/bulletin.do", method = RequestMethod.GET)
	public String bulletin(Model model) {
		Board board = new Board();
		board.setType(Constant.boardCodeType.BULLETIN.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "board/bulletin";
	}

	/**
	 * 당첨기원 페이지
	 */
	@RequestMapping(value = "/winPrayer.do", method = RequestMethod.GET)
	public String winPrayer(Model model) {
		Board board = new Board();
		board.setType(Constant.boardCodeType.WINPRAYER.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "board/winPrayer";
	}

	/**
	 * 토론방 페이지
	 */
	@RequestMapping(value = "/debateRoom.do", method = RequestMethod.GET)
	public String debate(Model model) {
		Board board = new Board();
		board.setType(Constant.boardCodeType.DEBATEROOM.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "board/debateRoom";
	}

	/**
	 * 1등당첨자이야기 페이지
	 */
	@RequestMapping(value = "/theFirstStory.do", method = RequestMethod.GET)
	public String theFirstStory(Model model) {
		Board board = new Board();
		board.setType(Constant.boardCodeType.THEFIRSTSTORY.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "board/theFirstStory";
	}

	/**
	 * 게시판 내용 검색
	 */
	@RequestMapping(value = "/searchBoardContent.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<List<Board>> searchBoardContent(@RequestBody Board board, Model model) {
		board.setStart_row_num((board.getCurrent_page()-1) * board.getPost_num_base_cnt()); //페이징 시작 번호 수 설정

		List<Board> list = boardService.selectList(board);

		try {
			model.addAttribute("list", new ObjectMapper().writeValueAsString(list));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	/**
	 * 게시판 내용 (읽기) 페이지
	 */
	@RequestMapping(value = "/readingPostBoard.do", method = RequestMethod.GET)
	public String readingPostBoard(Board board, Model model) {
		List<Board> post_board = boardService.selectPostBoard(board);

		ResponseEntity<List<Board>> comment_list = searchBoardCommentContent(board, model);
		try {
			model.addAttribute("type_name", Constant.boardCodeTypeName(board.getType()));
			model.addAttribute("post_board", new ObjectMapper().writeValueAsString(post_board));
			model.addAttribute("comment_list", new ObjectMapper().writeValueAsString(comment_list.getBody()));

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "board/readingPostBoard";
	}

	/**
	 * 댓글 내용 검색
	 */
	@RequestMapping(value = "/searchBoardCommentContent.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<List<Board>> searchBoardCommentContent(@RequestBody Board board, Model model) {
		List<Board> list = boardService.selectPostBoardDetail(board);

		try {
			model.addAttribute("list", new ObjectMapper().writeValueAsString(list));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	/**
	 * 글쓰기 페이지
	 */
	@RequestMapping(value = "/editingPostBoard.do", method = RequestMethod.GET)
	public String editingPostBoard(Board board, Model model) {
		try {
			model.addAttribute("type", board.getType());
			model.addAttribute("type_name", Constant.boardCodeTypeName(board.getType()));
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "board/editingPostBoard";
	}

}
