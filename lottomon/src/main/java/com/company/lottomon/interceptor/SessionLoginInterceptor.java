package com.mediage.imhealth.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mediage.imhealth.model.HospitalAdmin;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.mediage.imhealth.annotation.SessionLogin;
import com.mediage.imhealth.common.Constant;

import java.net.URLEncoder;

public class SessionLoginInterceptor implements HandlerInterceptor{
	private final Log log = LogFactory.getLog(getClass());
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		// TODO Auto-generated method stub
		HandlerMethod method = (HandlerMethod)handler;

//		SessionLogin auth = method.getMethodAnnotation(SessionLogin.class);
//		//어노테이션이 없거나 있는데 value를 false로 준경우.
//		if(auth == null || auth.value() == false){
//			return true;
//		}

		// 세션체크
		HttpSession session = request.getSession();
		HospitalAdmin account = (HospitalAdmin)session.getAttribute(Constant.ADMIN_MEM_SESSION);
		if(account == null){
			if ("XMLHttpRequest".equals(request.getHeader("X-Requested-With"))) {
				response.setStatus(HttpStatus.UNAUTHORIZED.value());
			} else {
				response.sendRedirect("/Login?redirect=" + URLEncoder.encode(request.getRequestURI(), "UTF-8"));
			}
			return false;
		}
		return true;
	}
 
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}
 
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}
}
