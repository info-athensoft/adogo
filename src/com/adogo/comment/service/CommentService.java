package com.adogo.comment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.adogo.comment.dao.CommentDao;
import com.adogo.comment.entity.Comment;


/**
 * @author sfz
 *
 */
@Service
public class CommentService {
	
	private CommentDao commentDao;
	
	@Autowired
	@Qualifier("commentDaoJdbcImpl")
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}	

	public List<Comment> findAll() {
		return this.commentDao.findAll();
	}
	
	
}
