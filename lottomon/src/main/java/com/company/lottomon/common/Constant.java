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
		GENERAL("01"),		// 자유게시판
		DEBATE("02"),  		// 토론방
		HOPE_WIN("03"),		// 당첨기원
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
