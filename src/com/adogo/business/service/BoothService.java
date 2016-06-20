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
}
