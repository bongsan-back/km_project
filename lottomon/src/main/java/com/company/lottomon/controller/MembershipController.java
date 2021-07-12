package com.company.lottomon.controller;

import com.company.lottomon.common.Constant;
import com.company.lottomon.model.Membership;
import com.company.lottomon.model.MembershipPrice;
import com.company.lottomon.result.LMServiceParam;
import com.company.lottomon.service.MembershipService;
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
import java.util.ArrayList;
import java.util.HashMap;

@Controller
@RequestMapping(value = "/membership")
@Component
public class MembershipController {

    @Autowired
    @Resource(name = "membershipService")
    private MembershipService membershipService;

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


}
