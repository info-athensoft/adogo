package com.adogo.business.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.adogo.business.entity.Business;

@Component
@Qualifier("businessDaoImpl")
public class BusinessDaoImpl implements BusinessDao{

	@Override
	public Business findByBizNo(int bizNo) {
		Business b = getBiz(bizNo);
		return b;
	}

	@Override
	public List<Business> findAll() {
		
		return getAllBiz();
	}
	
	private Business getBiz(int bizNo){
		Business b1 = new Business();
		
		b1.setBizNo(bizNo);
		b1.setBizName("Mara Coiffeur");
		b1.setBizDesc("Professional hair dressing and cutting service");
		b1.setLocationName("Monk");
		
		return b1;
	}
	
	private List<Business> getAllBiz(){
		Business b = null;
		
		List<Business> listBiz = new ArrayList<Business>();
		
		b = new Business();
		b.setBizNo(31001);
		b.setBizName("Mara Coiffeur");
		b.setBizDesc("Professional hair dressing and cutting service");
		b.setLocationName("Monk");
		
		listBiz.add(b);
		b = null;
		
		
		b = new Business();
		b.setBizNo(31002);
		b.setBizName("Mara Coiffeur2");
		b.setBizDesc("Professional hair dressing and cutting service2");
		b.setLocationName("Monk2");
		
		listBiz.add(b);
		b = null;
		
		
		b = new Business();
		b.setBizNo(31003);
		b.setBizName("Mara Coiffeur3");
		b.setBizDesc("Professional hair dressing and cutting service3");
		b.setLocationName("Monk3");
		
		listBiz.add(b);
		b = null;
		
		return listBiz;
	}

}
