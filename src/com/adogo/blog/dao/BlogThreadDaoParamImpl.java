package com.adogo.blog.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

import com.adogo.blog.entity.BlogThread;
import com.adogo.uaas.entity.UserAccount;

@Component
@Qualifier("blogThreadDaoParamImpl")
public class BlogThreadDaoParamImpl implements BlogThreadDao {
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public List<BlogThread> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BlogThread> findByClass() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BlogThread findById(long uid) {
		String sql = "select * from blog_thread_temp where uid =:uid";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("uid", uid);
		BlogThread x = null;
		try{
			x = jdbc.queryForObject(sql, paramSource, new BlogThreadRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}
	
	
	@Override
	public long create(BlogThread obj) {
		final String TABLE1 = "blog_thread_temp";
		
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into "+TABLE1);
		sbf.append("(category_no,title,post_date,author,tags,status,content) ");
		sbf.append("values(:category_no,:title,:post_date,:author,:tags,:status,:content)");
		String sql = sbf.toString();
		
		final Date dateCreate 			= new Date();
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("category_no", obj.getCategoryNo());
		paramSource.addValue("title", obj.getTitle());
		paramSource.addValue("post_date",new java.sql.Timestamp(dateCreate.getTime()));
		paramSource.addValue("author",obj.getAuthor());
		paramSource.addValue("tags",obj.getTags());
		paramSource.addValue("status",obj.getStatus());
		paramSource.addValue("content",obj.getContent());
		
		KeyHolder keyholder = new GeneratedKeyHolder();
		jdbc.update(sql, paramSource, keyholder);
		return (long)keyholder.getKey();		
	}
	
	
	private static class BlogThreadRowMapper implements RowMapper<BlogThread>{
		public BlogThread mapRow(ResultSet rs, int rowNumber) throws SQLException {
			BlogThread x = new BlogThread();
			x.setUid(rs.getLong("uid"));
			x.setLangNo(rs.getInt("lang_no"));
			x.setCategoryNo(rs.getInt("category_no"));
			x.setTitle(rs.getString("title"));
				Timestamp ts = rs.getTimestamp("post_date");			
			x.setPostDate(new Date(ts.getTime()));
			x.setAuthor(rs.getString("author"));
			x.setTags(rs.getString("tags"));
			x.setContent(rs.getString("content"));
			x.setStatus(rs.getInt("status"));
            return x;
		}		
	} 
}
