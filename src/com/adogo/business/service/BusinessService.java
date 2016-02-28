package com.adogo.business.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.adogo.business.dao.BusinessDao;
import com.adogo.business.entity.Business;

@Service
public class BusinessService {
	

	private BusinessDao businessDao;
	
	@Autowired
	@Qualifier("businessDaoImpl")
	public void setBusinessDao(BusinessDao businessDao) {
		this.businessDao = businessDao;
	}
	
	public Business findByBizNo(int bizNo){
		return businessDao.findByBizNo(bizNo);
	}
	
	public List<Business> findAll(){
		return businessDao.findAll();
	}
	
	
}
