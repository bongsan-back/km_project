package com.company.lottomon.model;

import lombok.Data;

@Data
public class LottoData {
    //Get ResponseBody
    private long drwNo; //회차 정보(당해의 주차 입력)
    private int drwtNo1; //1번째 번호
    private int drwtNo2; //2번째 번호
    private int drwtNo3; //3번째 번호
    private int drwtNo4; //4번째 번호
    private int drwtNo5; //5번째 번호
    private int drwtNo6; //6번째 번호
    private int bnusNo; //보너스 번호
    private String dwr_dt; //추첨일

    private int placeNo1_cnt;
    private int placeNo2_cnt;
    private int placeNo3_cnt;
    private int placeNo4_cnt;
    private int placeNo5_cnt;

    private String placeNo1_price;
    private String placeNo2_price;
    private String placeNo3_price;
    private String placeNo4_price;
    private String placeNo5_price;

    private String last_drwNo;
}
