package com.adogo.business.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
		String sql = "select * from booth where biz_no =:bizNo";
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
		String sql = "select * from booth where booth_status > 0 order by rand()";		
		return jdbc.query(sql, new BoothRowMapper());
	}
	
	@Override
	public List<Booth> findByClassLevel1(int classNum) {
		String sql = "select * from booth where class_num=:classNum and  booth_status > 0";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classNum", classNum);
		List<Booth> boothList = new ArrayList<Booth>();
		try{
			boothList = jdbc.query(sql, paramSource, new BoothRowMapper());
		}catch(EmptyResultDataAccessException ex){
			
			ex.printStackTrace();
		}
		return boothList;
	}

	@Override
	public List<Booth> findByClassLevel1(String classCode) {
		String sql = "select * from booth where class_code=:classCode and booth_status > 0";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classCode", classCode);
		List<Booth> boothList = new ArrayList<Booth>();
		try{
			boothList = jdbc.query(sql, paramSource, new BoothRowMapper());
		}catch(EmptyResultDataAccessException ex){
			
			ex.printStackTrace();
		}
		return boothList;
	} 
	
	/* 
	 * NOT READY
	 * (non-Javadoc)
	 * @see com.adogo.business.dao.BoothDao#findByClass(int, int)
	 */
	@Override
	public List<Booth> findByClass(int categoryNumLv1, int categoryNumLv2) {
		String sql = "select * from booth where category_num_lv1=:categoryNumLv1 and category_num_lv2=:categoryNumLv2 and booth_status > 0";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("categoryNumLv1", categoryNumLv1);
		paramSource.addValue("categoryNumLv2", categoryNumLv2);
		List<Booth> boothList = new ArrayList<Booth>();
		try{
			boothList = jdbc.query(sql, paramSource, new BoothRowMapper());
		}catch(EmptyResultDataAccessException ex){
			ex.printStackTrace();
		}
		return boothList;
	}

	@Override
	public List<Booth> findNewBrands() {
		String sql = "select * from view_booth_new_brand ";		
		return jdbc.query(sql, new BoothRowMapper());
	}

	@Override
	public List<Booth> findWeeklyFeatured() {
		String sql = "select * from view_booth_weekly_featured ";		
		return jdbc.query(sql, new BoothRowMapper());
	}

	@Override
	public List<Booth> findMonthlyStars() {
		String sql = "select * from view_booth_monthly_star ";		
		return jdbc.query(sql, new BoothRowMapper());
	}

	@Override
	public List<Booth> findPopular() {
		String sql = "select * from view_booth_popular ";		
		return jdbc.query(sql, new BoothRowMapper());
	}

	@Override
	public List<Booth> findPopular(int classNum) {
		String sql = "select * from view_booth_popular where class_num=:classNum ";
//		String sql = "select distinct * from view_booth_popular where class_num=:classNum ";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classNum", classNum);
		List<Booth> boothList = jdbc.query(sql, paramSource, new BoothRowMapper());
		return boothList;
		
	}

	@Override
	public void updateCounter(long bizNo, long counter) {
		final String TABLE1 = "booth";
		
		StringBuffer sbf = new StringBuffer();
		sbf.append("update "+TABLE1);
		sbf.append(" set counter=:counter ");
		sbf.append("where 1=1 ");
		sbf.append("and biz_no=:bizNo");
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("bizNo",bizNo);
		paramSource.addValue("counter",counter);
		
		jdbc.update(sql, paramSource);
		System.out.println("leaving ... updateCounter. ");
	}

	private static class BoothRowMapper implements RowMapper<Booth>{
		public Booth mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Booth x = new Booth();
			x.setUid(rs.getLong("uid"));
			x.setBizNo(rs.getLong("biz_no"));
			x.setClassNum(rs.getInt("class_num"));
			x.setClassCode(rs.getString("class_code"));
			x.setCategoryNumLv1(rs.getInt("category_num_lv1"));
			x.setCategoryNumLv2(rs.getInt("category_num_lv2"));
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
			x.setSupportLang(rs.getString("support_lang"));
			x.setViewedBooth(rs.getLong("viewed_booth"));
			x.setViewedHomepage(rs.getLong("viewed_homepage"));
			x.setViewedProfile(rs.getLong("viewed_profile"));
			x.setNumOfLiked(rs.getLong("num_of_liked"));
			x.setNumOfFavourite(rs.getLong("num_of_favourite"));
			x.setNumOfShared(rs.getLong("num_of_shared"));
			x.setHomepageUrl(rs.getString("homepage_url"));
			x.setCounter(rs.getLong("counter"));
	        return x;
		}		
	}
	
}
