package com.adogo.business.dao;

import java.util.List;

import com.adogo.business.entity.Booth;

public interface BoothDao {
	public Booth findByBizNo(int bizNo);
	public List<Booth> findAll();
	
	public List<Booth> findByClassLevel1(int classNum);
	public List<Booth> findByClassLevel1(String classCode);
	
	public List<Booth> findNewBrands();
	public List<Booth> findWeeklyFeatured();
	public List<Booth> findMonthlyStars();
}
