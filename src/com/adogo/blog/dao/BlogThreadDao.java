package com.adogo.blog.dao;

import java.util.List;

import com.adogo.blog.entity.BlogThread;

public interface BlogThreadDao {
	public List<BlogThread> findAll();
	public List<BlogThread> findByClass();
	public BlogThread findById(long id);
	
	public long create(BlogThread blogThread);
	
}
