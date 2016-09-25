package com.adogo.upcs.dao;

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

import com.adogo.upcs.entity.UserPaymentAccount;

@Component
@Qualifier("userPaymentAccountDaoParamImpl")
public class UserPaymentAccountDaoParamImpl implements UserPaymentAccountDao {
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public List<UserPaymentAccount> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserPaymentAccount findById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserPaymentAccount findByCustomerID(String customerID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserPaymentAccount findByUserAccountName(String userAcctName) {
		String sql = "select * from user_account_payment where user_acct =:user_acct";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("user_acct", userAcctName);
		UserPaymentAccount obj = null;
		try{
			obj = jdbc.queryForObject(sql, paramSource, new UserPaymentAccountRowMapper());
		}catch(EmptyResultDataAccessException ex){
			obj = null;
		}
		return obj;
	}

	@Override
	public long create(UserPaymentAccount obj) {
		final String TABLE1 = "user_account_payment";
		
		StringBuffer sbf = new StringBuffer();
		sbf.append("insert into "+TABLE1);
		sbf.append("(user_acct,customer_id,first_name,last_name,email) ");
		sbf.append("values(:user_acct,:customer_id,:first_name,:last_name,:email)");
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("user_acct", obj.getUserAcct());
		paramSource.addValue("customer_id", obj.getCustomerId());
		paramSource.addValue("first_name",obj.getFirstName());
		paramSource.addValue("last_name",obj.getLastName());
		paramSource.addValue("email",obj.getEmail());
		
		KeyHolder keyholder = new GeneratedKeyHolder();
		jdbc.update(sql, paramSource, keyholder);
		return (long)keyholder.getKey();

	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}
	
	private static class UserPaymentAccountRowMapper implements RowMapper<UserPaymentAccount>{
		public UserPaymentAccount mapRow(ResultSet rs, int rowNumber) throws SQLException {
			UserPaymentAccount x = new UserPaymentAccount();
			x.setUid(rs.getLong("uid"));
			x.setUserAcct(rs.getString("user_acct"));
			x.setCustomerId(rs.getString("customer_id"));
			x.setFirstName(rs.getString("first_name"));
			x.setLastName(rs.getString("last_name"));
			x.setEmail(rs.getString("email"));
            return x;
		}		
	}

}
