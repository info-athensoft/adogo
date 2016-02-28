package com.adogo.business.dao;

import java.util.List;

import com.adogo.business.entity.Business;

public interface BusinessDao {
	public Business findByBizNo(int bizNo);
	public List<Business> findAll();
}
