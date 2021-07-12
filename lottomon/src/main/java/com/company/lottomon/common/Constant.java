package com.company.lottomon.common;

public class Constant {
	public enum ServiceResult {
        SUCCESS, 
        FAIL,
        DUPLICATE,
        NOT_FOUND,
        LEAVE,
        INVALID_TOKEN,
        NOT_MATCHE,
        INVALID_PARAM,
        BAD_REQUEST,
        UNAUTHORIZED,
        MAMS_ERROR,
        ALREADY_DATA
    }
	
	public enum boardCodeType {
		BULLETIN("01"),		// 자유게시판
		WINPRAYER("02"),	// 당첨기원
		DEBATE("03"),  		// 토론방
		WINNIG("04"),		// 당첨자이야기
		NOTICE("05");		// 공지사항
		boardCodeType(String type) {
			this.type = type;
		}
		private String type;
		public String getTypeValue() {
			return this.type;
		}
	}
}
