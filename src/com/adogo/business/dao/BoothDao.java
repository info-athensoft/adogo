package com.adogo.business.dao;

import java.util.List;

import com.adogo.business.entity.Booth;

public interface BoothDao {
	public Booth findByBizNo(int bizNo);
	public List<Booth> findAll();
	
	public List<Booth> findByClassLevel1(int classNum);
	public List<Booth> findByClassLevel1(String classCode);
	
	public List<Booth> findByClass(int categoryNumLv1, int categoryNumLv2);
	
	public List<Booth> findNewBrands();
	public List<Booth> findWeeklyFeatured();
	public List<Booth> findMonthlyStars();
	
	/**
	 * find all popular booths
	 * @return
	 */
	public List<Booth> findPopular();
	
	
	/**
	 * find popular booths by class num of level 1
	 * @param classNum
	 * @return
	 */
	public List<Booth> findPopular(int classNum);
	
	public void updateCounter(long bizNo, long counter);
	
}
