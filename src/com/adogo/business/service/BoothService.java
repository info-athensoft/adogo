package com.adogo.business.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.adogo.business.dao.BoothDao;
import com.adogo.business.entity.Booth;

@Service
public class BoothService {
private BoothDao boothDao;
	
	@Autowired
	@Qualifier("boothDaoImpl")
	public void setBoothDao(BoothDao boothDao) {
		this.boothDao = boothDao;
	}
	
	public Booth findByBizNo(int bizNo){
		return boothDao.findByBizNo(bizNo);
	}
	
	public List<Booth> findAll(){
		return boothDao.findAll();
	}
	
	public List<Booth> findByClassLevel1(int classNum){
		return boothDao.findByClassLevel1(classNum);
	}
	
	public List<Booth> findByClassLevel1(String classCode){
		return boothDao.findByClassLevel1(classCode);
	}
	
	public List<Booth> findByClass(int categoryNumLv1, int categoryNumLv2){
		return boothDao.findByClass(categoryNumLv1,categoryNumLv2);
	}
	
	public List<Booth> findNewBrands(){
		return boothDao.findNewBrands();
	}
	
	public List<Booth> findWeeklyFeatured(){
		return boothDao.findWeeklyFeatured();
	}
	
	public List<Booth> findMonthlyStars(){
		return boothDao.findMonthlyStars();
	}
	
	public List<Booth> findPopular(){
		return boothDao.findPopular();
	}
	
	public List<Booth> findPopular(int classNum){
		return boothDao.findPopular(classNum);
	}
	
	public void updateCounter(long bizNo, long counter){
		boothDao.updateCounter(bizNo, counter);
	}
}
