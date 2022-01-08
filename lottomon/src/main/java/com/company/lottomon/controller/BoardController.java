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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
		board.setType(Constant.menuCodeType.BULLETIN.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
			model.addAttribute("type", Constant.menuCodeType.BULLETIN.getTypeValue()); //게시판 type
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "community/bulletin";
	}

	/**
	 * 당첨기원 페이지
	 */
	@RequestMapping(value = "/winPrayer.do", method = RequestMethod.GET)
	public String winPrayer(Model model) {
		Board board = new Board();
		board.setType(Constant.menuCodeType.WINPRAYER.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
			model.addAttribute("type", Constant.menuCodeType.WINPRAYER.getTypeValue()); //게시판 type
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "community/winPrayer";
	}

	/**
	 * 토론방 페이지
	 */
	@RequestMapping(value = "/debateRoom.do", method = RequestMethod.GET)
	public String debate(Model model) {
		Board board = new Board();
		board.setType(Constant.menuCodeType.DEBATEROOM.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
			model.addAttribute("type", Constant.menuCodeType.DEBATEROOM.getTypeValue()); //게시판 type
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "community/debateRoom";
	}

	/**
	 * 1등당첨자이야기 페이지
	 */
	@RequestMapping(value = "/theFirstStory.do", method = RequestMethod.GET)
	public String theFirstStory(Model model) {
		Board board = new Board();
		board.setType(Constant.menuCodeType.THEFIRSTSTORY.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
			model.addAttribute("type", Constant.menuCodeType.THEFIRSTSTORY.getTypeValue()); //게시판 type
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "community/theFirstStory";
	}

	/**
	 * 공지사항 페이지
	 */
	@RequestMapping(value = "/notice.do", method = RequestMethod.GET)
	public String notice(Model model) {
		Board board = new Board();
		board.setType(Constant.menuCodeType.NOTICE.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
			model.addAttribute("type", Constant.menuCodeType.NOTICE.getTypeValue()); //게시판 type
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "service_center/notice";
	}

	/**
	 * 1:1문의하기 페이지
	 */
	@RequestMapping(value = "/mattersForInquiry.do", method = RequestMethod.GET)
	public String mattersForInquiry(Model model) {
		Board board = new Board();
		board.setType(Constant.menuCodeType.MATTERSFORINQUIRY.getTypeValue()); //게시물 종류 설정

		int listCnt = boardService.selectListCount(board);

		try {
			model.addAttribute("listCnt", listCnt); //리스트 수
			model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
			model.addAttribute("type", Constant.menuCodeType.MATTERSFORINQUIRY.getTypeValue()); //게시판 type
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "service_center/mattersForInquiry";
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
	public String readingPostBoard(HttpServletRequest request, HttpServletResponse response, Board board, Model model) {
		List<Board> post_board = boardService.selectPostBoard(board);

		try {
			model.addAttribute("postNumBaseCnt", 5); //페이지당 게시글 기본 출력 개수
			model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
			model.addAttribute("type", board.getType()); //페이지 종류
			model.addAttribute("type_name", Constant.menuCodeTypeName(board.getType())); //페이지 명
			model.addAttribute("type_group_name", Constant.menuCodeTypeGroupName(board.getType())); //카테고리 명
			model.addAttribute("post_board", new ObjectMapper().writeValueAsString(post_board)); //페이지 내용(list)
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
		board.setStart_row_num((board.getCurrent_page()-1) * board.getPost_num_base_cnt()); //페이징 시작 번호 수 설정

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
			List<Board> post_board = null;

			if(board.getOption() != null && board.getOption().equals("edit")){
				post_board = boardService.selectPostBoard(board); //글 수정일 경우 기존 내용을 불러움
			}

			model.addAttribute("seq", board.getSeq()); //게시클 시퀀스
			model.addAttribute("type", board.getType()); //페이지 종류
			model.addAttribute("type_name", Constant.menuCodeTypeName(board.getType())); //페이지 명
			model.addAttribute("type_group_name", Constant.menuCodeTypeGroupName(board.getType())); //카테고리 명
			model.addAttribute("post_board", new ObjectMapper().writeValueAsString(post_board)); //페이지 내용
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "board/editingPostBoard";
	}

	/**
	 * 글쓰기 insert
	 */
	@RequestMapping(value = "/insertBoardContent.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<Integer> insertBoardContent(@RequestBody Board board) {
		try {
			board.setPv("0"); //조회수 기본세팅
			board.setShow_yn("Y"); //show_yn 기본세팅

			boardService.insertBoardContent(board);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity<>(board.getSeq(), HttpStatus.OK);
	}

	/**
	 * 글쓰기 delete
	 */
	@RequestMapping(value = "/deleteBoardContent.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<Integer> deleteBoardContent(@RequestBody Board board) {
		try {
			boardService.deleteBoardContent(board.getSeq());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity<>(1, HttpStatus.OK);
	}

	/**
	 * 조회수 업데이트 처리
	 */
	@RequestMapping(value = "/updateBoardViewUp.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<Integer> updateBoardViewUp(@RequestBody Board board) {
		try {
			//조회수 증가시킴
			boardService.updateBoardViewUp(board.getSeq());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ResponseEntity<>(1, HttpStatus.OK);
	}

	/**
	 * 댓글 insert
	 */
	@RequestMapping(value = "/insertBoardCommentContent.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<Integer> insertBoardCommentContent(@RequestBody Board.Comment boardComment) {
		try {
			boardService.insertBoardCommentContent(boardComment);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity<>(boardComment.getSeq(), HttpStatus.OK);
	}

	/**
	 * 댓글 edit
	 */
	@RequestMapping(value = "/editBoardCommentContent.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<Integer> editBoardCommentContent(@RequestBody Board.Comment boardComment) {
		try {
			boardService.editBoardCommentContent(boardComment);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity<>(boardComment.getSeq(), HttpStatus.OK);
	}

	/**
	 * 댓글 delete
	 */
	@RequestMapping(value = "/deleteBoardCommentContent.do", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<Integer> deleteBoardCommentContent(@RequestBody Board.Comment boardComment) {
		try {
			boardService.deleteBoardCommentContent(boardComment.getSeq());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return new ResponseEntity<>(boardComment.getSeq(), HttpStatus.OK);
	}
}
