package com.company.lottomon.model;

import lombok.Data;

@Data
public class MyLotto {
    //Get ResponseBody
    private long seq;
    private String id; //user_id
    private int drwNo; //회차 번호
    private int drwtNo1; //1번째 번호
    private int drwtNo2; //2번째 번호
    private int drwtNo3; //3번째 번호
    private int drwtNo4; //4번째 번호
    private int drwtNo5; //5번째 번호
    private int drwtNo6; //6번째 번호
    private int bnusNo; //보너스 번호
    private String reg_dt; //등록일

    //Get RequestBody
    private Integer current_page; //현재 선택된 페이지
    private Integer post_num_base_cnt; //기본 게시글 페이징 수
    private Integer start_row_num; //페이징 시작 번호 수
}
