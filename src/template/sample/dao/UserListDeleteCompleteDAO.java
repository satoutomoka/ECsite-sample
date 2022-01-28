package template.sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import template.sample.util.DBConnector;

public class UserListDeleteCompleteDAO {

	private DBConnector db =new DBConnector();
	private Connection con =db.getConnection();
	private String id;

	public int deleteUserList() throws SQLException{


		//管理者以外とuser_idを削除
		String sql ="delete from login_user_transaction where admin_flg is null or admin_flg<> '1' and id=? ";
		PreparedStatement ps;
		int result =0;

		try{
			ps=con.prepareStatement(sql);
			ps.setString(1, id);
			//更新したものをresultに代入
			result=ps.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return result;

		}
}
