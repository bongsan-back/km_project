package com.mediage.imhealth.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.mediage.imhealth.interceptor.SessionLoginInterceptor;

@Configuration 
//@EnableWebMvc
public class HttpInterceptorConfig extends WebMvcConfigurerAdapter 
{ 
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor((HandlerInterceptor) new SessionLoginInterceptor())
				.addPathPatterns("/**")
				.excludePathPatterns("/error")
				.excludePathPatterns("/healthy")
				.excludePathPatterns("/Login/**")
				.excludePathPatterns("/Download/**");
	}
}