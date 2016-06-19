package com.adogo.business.dao;

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
import org.springframework.stereotype.Component;

import com.adogo.business.entity.Booth;

@Component
@Qualifier("boothDaoImpl")
public class BoothDaoImpl implements BoothDao{

	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public Booth findByBizNo(int bizNo) {
		String sql = "select * from booth where bizNo =:bizNo";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("bizNo", bizNo);
		Booth booth = null;
		try{
			booth = jdbc.queryForObject(sql, paramSource, new BoothRowMapper());
		}catch(EmptyResultDataAccessException ex){
			booth = null;
			ex.printStackTrace();
		}
		return booth;
	}

	@Override
	public List<Booth> findAll() {
		String sql = "select * from booth";		
		return jdbc.query(sql, new BoothRowMapper());
	}
	
	private static class BoothRowMapper implements RowMapper<Booth>{
		public Booth mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Booth x = new Booth();
			x.setUid(rs.getLong("uid"));
			x.setBizNo(rs.getLong("biz_no"));
			x.setClassNum(rs.getInt("class_num"));
			x.setClassCode(rs.getString("class_code"));
			x.setBizName(rs.getString("biz_name"));
			x.setBizDesc(rs.getString("biz_desc"));
			x.setBoothStauts(rs.getInt("booth_status"));
			x.setHasAdpage(rs.getInt("has_adpage"));
			x.setHasWebsite(rs.getInt("has_website"));
			x.setLocCountry(rs.getString("loc_country"));
			x.setLocProv(rs.getString("loc_prov"));
			x.setLocArea(rs.getString("loc_area"));
			x.setLocCity(rs.getString("loc_city"));
			x.setLocDistriction(rs.getString("loc_distriction"));
			x.setLocName(rs.getString("loc_name"));
			x.setLogoCoverUrl(rs.getString("logo_cover_url"));
			x.setScore(rs.getDouble("score"));
			x.setViewedBooth(rs.getLong("viewed_booth"));
			x.setViewedHomepage(rs.getLong("viewed_homepage"));
			x.setViewedProfile(rs.getLong("viewed_profile"));
			x.setNumOfLiked(rs.getLong("num_of_liked"));
			x.setNumOfFavourite(rs.getLong("num_of_favourite"));
			x.setNumOfShared(rs.getLong("num_of_shared"));
            return x;
		}		
	} 
	
}
