package com.company.lottomon.result;

import org.apache.poi.ss.formula.functions.T;

public class LMServiceParam<T> {
	private String key;
	private T data;
	private long idx;

	public long getIdx() {
		return idx;
	}

	public void setIdx(long idx) {
		this.idx = idx;
	}

	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
}
