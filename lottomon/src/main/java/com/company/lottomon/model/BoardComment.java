package com.company.lottomon.model;

import lombok.Data;

@Data
public class BoardComment {
	private int seq;
	private int board_seq;
	private String content;
	private String user_id; //사용자 id
	private String reg_dt; //댓글 등록일자
	private String update_dt; //댓글 수정일자
}
