package com.company.lottomon.controller;

import com.company.lottomon.common.Constant.*;
import com.company.lottomon.model.*;
import com.company.lottomon.service.LottoService;
import com.company.lottomon.service.MembershipService;
import com.company.lottomon.service.UserService;
import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @Autowired
    @Resource(name = "lottoService")
    private LottoService lottoService;

    @Autowired
    @Resource(name = "userService")
    private UserService userService;


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
     * 계정 정보 변경
     */
    @RequestMapping(value = "/myUpdate.do", method = RequestMethod.GET)
    public String myUpdate(HttpServletRequest request, HttpSession session, Model model) {
        if(session.getAttribute("user_id") == null){
            model.addAttribute("message","로그인이 필요한 서비스입니다.");
            model.addAttribute("redirectUrl","/myUpdate.do");
            return "/login/login";
        }
        UserInfo userInfo = new UserInfo();
        model.addAttribute("userInfo", userService.getUserInfo((String)session.getAttribute("user_id")));

        return "login/myUpdate";
    }

    /**
     * 메인 페이지
     */
    @RequestMapping(value = "/main.do", method = RequestMethod.GET)
    public String main(HttpServletRequest request, HttpSession session, Model model) {
        try {

            model.addAttribute("lottoData3Week", lottoService.select3WeeksNumberList());
            model.addAttribute("selectOrderingNo1", lottoService.selectOrderingNo1());
            model.addAttribute("selectPlaceList", lottoService.selectPlaceList());

            Board board = new Board();
            board.setStart_row_num(0);
            board.setPost_num_base_cnt(5);

            board.setType("01");
            model.addAttribute("board_free", boardService.selectList(board));
            board.setType("02");
            model.addAttribute("board_debate", boardService.selectList(board));
            board.setType("03");
            model.addAttribute("board_winhope", boardService.selectList(board));
            board.setType("04");
            model.addAttribute("board_win", boardService.selectList(board));









        }catch (Exception e){
            e.printStackTrace();
        }
        return "main";
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
     * 멤버쉽 결제 페이지
     */
    @RequestMapping(value = "/membershipPay.do", method = RequestMethod.GET)
    public String membershipPay(HttpServletRequest request, HttpSession session, Model model) {
        try {
            if(session.getAttribute("user_id") == null){
                model.addAttribute("message","로그인이 필요한 서비스입니다.");
                model.addAttribute("redirectUrl","/myUpdate.do");
                return "/login/login";
            }
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
     * 로또당첨결과 페이지
     */
    @RequestMapping(value = "/winning.do", method = RequestMethod.GET)
    public String winning(HttpServletRequest request, HttpSession session, Model model) {
        try {
            LottoData lottoData = lottoService.selectData();

            model.addAttribute("lottoData", lottoData);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "lotto/lottoWinning";
    }



}
