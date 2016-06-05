package com.adogo.uaas.dao;

import java.util.List;

import com.adogo.uaas.entity.VisitorProfile;

public interface VisitorProfileDao {
	public List<VisitorProfile> find();
//	public VisitorProfile findById(long acctId);
	public VisitorProfile findByAcctName(String acctName);
	
	public long create(VisitorProfile visitorProfile);
	public void update(VisitorProfile visitorProfile);
	public void delete();
}
