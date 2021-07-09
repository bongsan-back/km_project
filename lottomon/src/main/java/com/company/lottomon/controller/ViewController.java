package com.company.lottomon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.lottomon.common.Constant.boardCodeType;
import com.company.lottomon.model.Board;
import com.company.lottomon.service.BoardService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@Component
public class ViewController {

	@Autowired
	BoardService boardService;
	
    /**
     * 로그인 페이지
     */
    @RequestMapping(value = "/login/login.do", method = RequestMethod.GET)
    public String login(HttpServletRequest request, HttpSession session) {

        return "login/login";
    }
    
    /**
     * 회원 가입 약관 동의 페이지 호출
     */
    @RequestMapping(value = "/login/joinAgree.do", method = RequestMethod.GET)
    public String join(HttpServletRequest request, HttpSession session) {

        return "login/joinAgree";
    }
    
    /**
     * 회원 가입 정보 입력 페이지 호출
     */
    @RequestMapping(value = "/login/joinInfo.do", method = RequestMethod.GET)
    public String joininfo(HttpServletRequest request, HttpSession session) {

        return "login/joinInfo";
    }
    
    /**
     * 회원 정보 찾기 페이지
     */
    @RequestMapping(value = "/login/findUser.do", method = RequestMethod.GET)
    public String findUser(HttpServletRequest request, HttpSession session) {

        return "login/findUser";
    }
    
    /**
     * 회원 가입 완료
     */
    @RequestMapping(value = "/login/joinSuc.do", method = RequestMethod.GET)
    public String joinSuc(HttpServletRequest request, HttpSession session) {

        return "login/joinSuc";
    }

    
    /**
     * 자유게시판 페이지
     */
    @RequestMapping(value = "/board/bulletin.do", method = RequestMethod.GET)
    public String boardBulletin(Model model) {
        Board board = new Board();
        board.setType(boardCodeType.BULLETIN.getTypeValue()); //게시물 종류 설정

        int listCnt = boardService.selectListCount(board);

        try {
            model.addAttribute("listCnt", listCnt); //리스트 수
            model.addAttribute("postNumBaseCnt", 10); //페이지당 게시글 기본 출력 개수
            model.addAttribute("pageNumBaseCnt", 10); //페이지번호 기본 출력 개수
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "board/boardBulletin";
    }

}
