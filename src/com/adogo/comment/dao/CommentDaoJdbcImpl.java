package com.adogo.comment.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.adogo.comment.entity.Comment;

/**
 * @author sfz
 *
 */

@Repository
@Qualifier("commentDaoJdbcImpl")
public class CommentDaoJdbcImpl implements CommentDao {

	private static final Logger logger = Logger.getLogger(CommentDaoJdbcImpl.class);

	private final String TABLE = "COMMENT";

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public List<Comment> findAll() {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("acct_id, ");
		sbf.append("nick_name, ");
		sbf.append("page_url, ");
		sbf.append("avatar_url, ");
		sbf.append("parent_id, ");
		sbf.append("lang_no, ");
		sbf.append("content, ");
		sbf.append("create_date, ");
		sbf.append("status ");
		sbf.append(" FROM ").append(TABLE);
		sbf.append(" WHERE 1 = 1");
		String sql = sbf.toString();
	
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		List<Comment> x = new ArrayList<Comment>();
		try {
			x = jdbc.query(sql, paramSource, new CommentRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	private static class CommentRowMapper implements RowMapper<Comment> {
		public Comment mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Comment x = new Comment();
			x.setGlobalId(rs.getLong("global_id"));
			x.setAcctId(rs.getLong("acct_id"));
			
			x.setNickName(rs.getString("nick_name"));
			x.setPageUrl(rs.getString("page_url"));
			x.setAvatarUrl(rs.getString("avatar_url"));
			x.setParentId(rs.getLong("parent_id"));
			x.setLangNo(rs.getInt("lang_no"));
			x.setContent(rs.getString("content"));
			
			Timestamp cd = rs.getTimestamp("create_date");
			if (cd != null) {
				x.setCreateDate(new Date(cd.getTime()));
			}
			
			x.setStatus(rs.getString("status"));
			return x;
		}
	}

	

}
