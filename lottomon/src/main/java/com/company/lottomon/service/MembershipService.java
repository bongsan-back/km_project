package com.company.lottomon.service;

import com.company.lottomon.model.Board;
import com.company.lottomon.model.Membership;
import com.company.lottomon.model.MembershipPrice;

import java.util.List;

public interface MembershipService {
	List<Membership> selectList();
	List<MembershipPrice> getPrice();
	MembershipPrice selectOnePrice(MembershipPrice membershipPrice);
}
