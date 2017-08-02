package com.adogo.ad.dao;

import java.util.List;

import com.adogo.ad.entity.AdPost;

public interface AdPostDao {
	public AdPost findById(long globalId);
	public int saveTags(String adpostId, String tags);
	public List<AdPost> findAll();
}
