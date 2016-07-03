package com.adogo.uaas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

import com.adogo.uaas.entity.VisitorProfile;

@Component
@Qualifier("visitorProfileDaoParamImpl")
public class VisitorProfileParamImpl implements VisitorProfileDao {
	
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public List<VisitorProfile> find() {
		final String TABLE_1 = "visitor_profile";
		String sql = "select * from " +TABLE_1;		
		return jdbc.query(sql, new VisitorProfileRowMapper());
	}

	@Override
	public VisitorProfile findByAcctName(String acctName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long create(VisitorProfile visitorProfile) {
		final String TABLE = "visitor_profile";
		
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into "+TABLE);
		sbf.append("(uid,user_id,first_name,last_name,nick_name,country_code,province_code,city_code,postal_code,");
		sbf.append("gender,birth_year,birth_month,birth_day,phone_country_code,phone_num) ");
		sbf.append("values(:uid,:user_id,:first_name,:last_name,:nick_name,:country_code,:province_code,:city_code,:postal_code,");
		sbf.append(":gender,:birth_year,:birth_month,:birth_day,:phone_country_code,:phone_num)");
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("uid", visitorProfile.getUid());
		paramSource.addValue("user_id", visitorProfile.getUserId());
		paramSource.addValue("first_name", visitorProfile.getFirstName());
		paramSource.addValue("last_name", visitorProfile.getLastName());
		paramSource.addValue("nick_name", visitorProfile.getNickName());
		paramSource.addValue("country_code", visitorProfile.getCountryCode());
		paramSource.addValue("province_code", visitorProfile.getProvinceCode());
		paramSource.addValue("city_code", visitorProfile.getCityCode());
		paramSource.addValue("postal_code", visitorProfile.getPostalCode());
		paramSource.addValue("gender", visitorProfile.getGender());
		paramSource.addValue("birth_year", visitorProfile.getBirthYear());
		paramSource.addValue("birth_month", visitorProfile.getBirthMonth());
		paramSource.addValue("birth_day", visitorProfile.getBirthDay());
		paramSource.addValue("phone_country_code", visitorProfile.getPhoneCountryCode());
		paramSource.addValue("phone_num", visitorProfile.getPhoneNum());

		KeyHolder keyholder = new GeneratedKeyHolder();
		jdbc.update(sql, paramSource, keyholder);
		return (long)keyholder.getKey();
		
//		jdbc.update(sql, paramSource);
//		return visitorProfile.getUid();
	}

	@Override
	public void update(VisitorProfile visitorProfile) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}
	
	private static class VisitorProfileRowMapper implements RowMapper<VisitorProfile>{
		public VisitorProfile mapRow(ResultSet rs, int rowNumber) throws SQLException {
			VisitorProfile x = new VisitorProfile();
			x.setUid(rs.getLong("uid"));
			x.setUserId(rs.getLong("user_id"));
			x.setFirstName(rs.getString("first_name"));
			x.setLastName(rs.getString("last_name"));
			x.setNickName(rs.getString("nick_name"));
			x.setCountryCode(rs.getString("country_code"));
			x.setProvinceCode(rs.getString("pronvice_code"));
			x.setCityCode(rs.getString("city_code"));
			x.setPostalCode(rs.getString("postal_code"));
			x.setGender(rs.getInt("gender"));
			x.setBirthYear(rs.getInt(rs.getInt("birth_year")));
			x.setBirthMonth(rs.getInt(rs.getInt("birth_month")));
			x.setBirthDay(rs.getInt(rs.getInt("birth_day")));
			x.setPhoneCountryCode(rs.getInt("phone_country_code"));
			x.setPhoneNum(rs.getInt("phone_num"));			
            return x;
		}		
	} 

}
