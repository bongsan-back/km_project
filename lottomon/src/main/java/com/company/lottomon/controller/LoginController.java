package com.company.lottomon.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.company.lottomon.common.Constant;
import com.company.lottomon.encrypt.AES256;
import com.company.lottomon.model.MembershipPrice;
import com.company.lottomon.model.UserInfo;
import com.company.lottomon.result.LMServiceParam;
import com.company.lottomon.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Calendar;

@Controller
@RequestMapping(value = "/login")
@Component
public class LoginController {
    Logger log = Logger.getLogger(this.getClass());

    @Autowired
    @Resource(name = "userService")
    private UserService userService;

    static private AES256 AES = new AES256("LOTTOMON01234567");

    /**
     * 멤버쉽 금액 조회
     */

    @RequestMapping(value = "/loginProc.do", method = RequestMethod.POST)
    public @ResponseBody
    Object smsCert(@RequestBody LMServiceParam<UserInfo> param, HttpServletRequest request, HttpSession session) {
        try {

            log.debug(param.getData());
            UserInfo userInfo = param.getData();
            userInfo.setPassword(AES.encryptStringToBase64(userInfo.getPassword()));

            Constant.LoginResult result = userService.loginProc(userInfo, session);

            userExpire();

            return result;
        } catch (Exception e) {

            e.printStackTrace();
            return Constant.ServiceResult.FAIL;
            // TODO: handle exception
        }
    }


    /**
     * 로그인 페이지
     */
    @RequestMapping(value = "/naverLogin.do", method = RequestMethod.GET)
    public String naverLogin(HttpServletRequest request, HttpSession session) {

        return "login/naverLogin";
    }

    /**
     * 로그인 페이지
     */
    @RequestMapping(value = "/naverCallback.do", method = RequestMethod.GET)
    public String naverCallBack(HttpServletRequest request, HttpSession session) {

        return "login/naverCallback";
    }


    /**
     * SNS 로그인 체크
     */

    @RequestMapping(value = "/snsLoginChk.do", method = RequestMethod.POST)
    public @ResponseBody
    Object snsLoginChk(@RequestBody LMServiceParam<UserInfo> param, HttpServletRequest request, HttpSession session) {
        try {

            log.debug(param.getData());
            UserInfo userInfo = param.getData();
            userInfo.setJoin_type(Constant.SnsType(userInfo.getJoin_type()));

            Constant.LoginResult result = userService.snsLoginProc(userInfo, session);

            return result;
        } catch (Exception e) {

            e.printStackTrace();
            return Constant.ServiceResult.FAIL;
            // TODO: handle exception
        }
    }
    private void userExpire(){
        SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
        Calendar time = Calendar.getInstance();

        String date = format1.format(time.getTime());

        try {
            int userExYn = userService.getExprieYn(date);
            if(userExYn > 0){
                return;
            }else{
                int userExCnt = userService.getExprieProc(date);
                userService.insertExpireInfo(userExCnt);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
