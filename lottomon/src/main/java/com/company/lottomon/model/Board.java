package com.company.lottomon.model;

import lombok.Data;

@Data
public class Board {
	//Get ResponseBody
	private String seq; //게시글 순번
	private String type; //게시글 종류
	private String title; //게시글 제목
	private String content; //게시글 내용
	private String show_yn; //게시글 표시 여부
	private String reg_dt; //게시글 등록일자
	private String update_dt; //게시글 수정일자
	private String priority; //게시글 우선순위

	//Get RequestBody
	private Integer current_page; //현재 선택된 페이지
	private Integer post_num_base_cnt; //기본 게시글 페이징 수
	private Integer start_row_num; //페이징 시작 번호 수
}
