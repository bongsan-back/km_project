package com.company.lottomon.controller;

import com.company.lottomon.common.Constant.*;
import com.company.lottomon.model.Membership;
import com.company.lottomon.model.MembershipPrice;
import com.company.lottomon.service.MembershipService;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.lottomon.model.Board;
import com.company.lottomon.service.BoardService;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@Component
public class ViewController {
    Logger log = Logger.getLogger(this.getClass());

	@Autowired
	@Resource(name = "boardService")
	private BoardService boardService;

    @Autowired
    @Resource(name = "membershipService")
    private MembershipService membershipService;

    /**
     * 로그인 페이지
     */
    @RequestMapping(value = "/login/login.do", method = RequestMethod.GET)
    public String login(HttpServletRequest request, HttpSession session) {
        log.debug(session.getAttribute("user_id") + "세션 아이디입니다.");
        System.out.println(session.getAttribute("user_id") + "세션 아이디입니다.");

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
     * 멤버쉽 페이지
     */
    @RequestMapping(value = "/membership.do", method = RequestMethod.GET)
    public String membership(HttpServletRequest request, HttpSession session, Model model) {
        try {
            ArrayList<Membership> memberships = (ArrayList<Membership>) membershipService.selectList();
            ArrayList<MembershipPrice> membershipPrice = (ArrayList<MembershipPrice>) membershipService.getPrice();

            for (int i = 0; i < membershipPrice.size(); i++) {
                MembershipPrice tmpMsp = (MembershipPrice)membershipPrice.get(i);
                if(tmpMsp.getMembership_seq().equals("1")){
                    model.addAttribute("vip"+tmpMsp.getMaintain_month(), tmpMsp.getPrice());
                }else if(tmpMsp.getMembership_seq().equals("2")){
                    model.addAttribute("gold"+tmpMsp.getMaintain_month(), tmpMsp.getPrice());
                }else if(tmpMsp.getMembership_seq().equals("3")){
                    model.addAttribute("silver"+tmpMsp.getMaintain_month(), tmpMsp.getPrice());
                }
            }
            model.addAttribute("membershipList", memberships);

        }catch (Exception e){
            e.printStackTrace();
        }
        return "membership/membership";
    }

    /**
     * 멤버쉽 페이지
     */
    @RequestMapping(value = "/membershipPay.do", method = RequestMethod.GET)
    public String membershipPay(HttpServletRequest request, HttpSession session, Model model) {
        try {
            ArrayList<Membership> memberships = (ArrayList<Membership>) membershipService.selectList();
            ArrayList<MembershipPrice> membershipPrice = (ArrayList<MembershipPrice>) membershipService.getPrice();

            model.addAttribute("membershipList", memberships);
            model.addAttribute("membershipPriceList", membershipPrice);

        }catch (Exception e){
            e.printStackTrace();
        }
        return "membership/membership_pay";
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
