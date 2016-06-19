package com.adogo.business.dao;

import java.util.List;

import com.adogo.business.entity.Booth;

public interface BoothDao {
	public Booth findByBizNo(int bizNo);
	public List<Booth> findAll();
}
