package template.sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import template.sample.dto.UserInfoDTO;
import template.sample.util.DBConnector;

public class UserDetailsDAO {

	private DBConnector db =new DBConnector();
	private Connection con =db.getConnection();

	public UserInfoDTO getUserInfo(String id)throws SQLException{
		UserInfoDTO dto =new UserInfoDTO();
		String sql ="select * from login_user_transaction where id=?";

		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,Integer.parseInt(id));
			ResultSet rs=ps.executeQuery();

			while(rs.next()){

				dto.setId(rs.getString("id"));
				dto.setLoginId(rs.getString("login_id"));
				dto.setLoginPass(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));
				dto.setInsert_date(rs.getString("insert_date"));
				dto.setUpdated_date(rs.getString("updated_date"));

			}
		}catch(Exception e){
			e.printStackTrace();


		}finally{
			con.close();
		}
		return dto;
	}

}
