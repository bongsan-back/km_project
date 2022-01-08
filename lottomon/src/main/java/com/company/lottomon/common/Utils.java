package com.company.lottomon.common;

import javax.servlet.http.HttpSession;

public class Utils {
    //세션 체크 (세션 유효하면 true, 없으면 false)
    public boolean sessionCheck(HttpSession session){
        boolean sc = false;
        if(session.getAttribute("user_id") != null &&
                session.getAttribute("user_name") != null &&
                session.getAttribute("user_nickname") != null &&
                session.getAttribute("grade_code") != null &&
                session.getAttribute("grade_name") != null &&
                session.getAttribute("role") != null
        )sc = true;
        else sc = false;

        return sc;
    }

    public void sessionLogout(HttpSession session){
        session.invalidate();
    }

}
