package com.company.lottomon.model;

import org.apache.ibatis.session.ResultHandler;

public class MembershipPrice {
	private Long seq;
	private String membership_seq;
	private String maintain_month;
	private String price;
	private String discount_price;
	private String reg_dt;
	private String update_dt;
	private String event_start_dt;
	private String event_end_dt;

	public Long getSeq() {
		return seq;
	}

	public void setSeq(Long seq) {
		this.seq = seq;
	}

	public String getMembership_seq() {
		return membership_seq;
	}

	public void setMembership_seq(String membership_seq) {
		this.membership_seq = membership_seq;
	}

	public String getMaintain_month() {
		return maintain_month;
	}

	public void setMaintain_month(String maintain_month) {
		this.maintain_month = maintain_month;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(String discount_price) {
		this.discount_price = discount_price;
	}

	public String getReg_dt() {
		return reg_dt;
	}

	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}

	public String getUpdate_dt() {
		return update_dt;
	}

	public void setUpdate_dt(String update_dt) {
		this.update_dt = update_dt;
	}

	public String getEvent_start_dt() {
		return event_start_dt;
	}

	public void setEvent_start_dt(String event_start_dt) {
		this.event_start_dt = event_start_dt;
	}

	public String getEvent_end_dt() {
		return event_end_dt;
	}

	public void setEvent_end_dt(String event_end_dt) {
		this.event_end_dt = event_end_dt;
	}
}
