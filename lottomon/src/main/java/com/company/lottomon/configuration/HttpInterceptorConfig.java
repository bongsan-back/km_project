package com.company.lottomon.configuration;

import com.company.lottomon.interceptor.SessionLoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration 
//@EnableWebMvc
public class HttpInterceptorConfig extends WebMvcConfigurerAdapter 
{ 
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor((HandlerInterceptor) new SessionLoginInterceptor())
				.addPathPatterns("/**")
				.excludePathPatterns("/main**");
	}
}