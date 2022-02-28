package com.company.lottomon.controller;

import com.company.lottomon.common.Constant;
import com.company.lottomon.model.Board;
import com.company.lottomon.model.Membership;
import com.company.lottomon.model.MembershipPrice;
import com.company.lottomon.model.UserInfo;
import com.company.lottomon.result.LMServiceParam;
import com.company.lottomon.service.BoardService;
import com.company.lottomon.service.MembershipService;
import com.company.lottomon.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

@Controller
@RequestMapping(value = "/membership")
@Component
public class MembershipController {
    Logger log = Logger.getLogger(this.getClass());

    @Autowired
    @Resource(name = "membershipService")
    private MembershipService membershipService;

    @Autowired
    @Resource(name = "userService")
    private UserService userService;

    @Autowired
    BoardService boardService;

    /**
     * 멤버쉽 금액 조회
     */

    @RequestMapping(value = "/getPrice.do", method = RequestMethod.POST)
    public @ResponseBody
    Object smsCert(@RequestBody LMServiceParam<MembershipPrice> param, HttpServletRequest request, HttpSession session) {
        try {

            MembershipPrice result = (MembershipPrice) membershipService.selectOnePrice(param.getData());

            return new ResponseEntity<Object>(result, HttpStatus.OK);
        } catch (Exception e) {

            e.printStackTrace();
            return Constant.ServiceResult.FAIL;
            // TODO: handle exception
        }
    }


    /**
     * SNS 로그인 체크
     */

    @RequestMapping(value = "/deposit.do", method = RequestMethod.POST)
    public @ResponseBody
    Object snsLoginChk(@RequestBody LMServiceParam<UserInfo> param, HttpServletRequest request, HttpSession session) {
        try {
//양식에 맞게 작성해 주세요.<br><br>입금자 명 :<br>입금 금액 :<br>입금 날짜 :<br>휴대폰 번호 :<br><br>*휴대폰 번호는 입금이 잘못되거나, 안내를 도와드리는 목적으로 이용됩니다.<br>
            log.debug(param.getData());
            UserInfo userInfo = param.getData();

            SimpleDateFormat dtf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Calendar calendar = Calendar.getInstance();

            Date dateObj = calendar.getTime();
            String formattedDate = dtf.format(dateObj);

            UserInfo selectUser = userService.selectId(userInfo);

            Board board = new Board();

            String content = "고객님이 신청한 입금 내역입니다.<br><br>아이디 : "+userInfo.getId()+"<br>입금자 명 : "+userInfo.getBankname()+"<br>입금 금액 : "+userInfo.getPrice()+" 원<br>입금 날짜 : "+formattedDate+"<br><br>휴대폰 번호 : "+selectUser.getTelNo()+"<br>등급 : "+userInfo.getGrade()+"<br><br>*휴대폰 번호는 입금이 잘못되거나, 안내를 도와드리는 목적으로 이용됩니다.<br>";
            board.setContent(content);
            board.setType("22");
            board.setTitle("무통장 입금 신청");
            board.setShow_yn("Y");
            board.setUser_id((String)session.getAttribute("user_id"));
            board.setPv("0");

            boardService.insertBoardContent(board);

            Constant.ServiceResult result = Constant.ServiceResult.SUCCESS;

            return result;
        } catch (Exception e) {

            e.printStackTrace();
            return Constant.ServiceResult.FAIL;
            // TODO: handle exception
        }
    }

}
