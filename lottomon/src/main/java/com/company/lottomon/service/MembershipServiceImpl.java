package com.company.lottomon.service;

import com.company.lottomon.mapper.MembershipDAO;
import com.company.lottomon.model.Membership;
import com.company.lottomon.model.MembershipPrice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("membershipService")
public class MembershipServiceImpl implements MembershipService{
	
	@Autowired
	private MembershipDAO membershipDAO;

	@Override
	public List<Membership> selectList() {
		return membershipDAO.selectList();
	}

	@Override
	public List<MembershipPrice> getPrice() {
		return membershipDAO.getPrice();
	}

	@Override
	public MembershipPrice selectOnePrice(MembershipPrice membershipPrice) {
		return membershipDAO.selectOnePrice(membershipPrice);
	}

}
