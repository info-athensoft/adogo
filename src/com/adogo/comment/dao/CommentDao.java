package com.adogo.comment.dao;

import java.util.List;

import com.adogo.comment.entity.Comment;

/**
 * @author sfz
 *
 */
public interface CommentDao {

	/**
	 * @return
	 */
	public List<Comment> findAll();
	
}
