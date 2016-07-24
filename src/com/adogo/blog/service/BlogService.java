package com.adogo.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.adogo.blog.dao.BlogThreadDao;
import com.adogo.blog.entity.BlogThread;

@Service
public class BlogService {
	private BlogThreadDao blogThreadDao;	
	
	@Autowired
	@Qualifier("blogThreadDaoParamImpl")
	public void setBlogThreadDao(BlogThreadDao blogThreadDao) {
		this.blogThreadDao = blogThreadDao;
	}
	
	public BlogThread getBlogById(long id){
		return blogThreadDao.findById(id);
	}
	
	public long createThread(BlogThread blogThread){
		return blogThreadDao.create(blogThread);
	}
}
