package template.sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import template.sample.util.DBConnector;

public class UserListDeleteCompleteDAO {

	private DBConnector db =new DBConnector();
	private Connection con =db.getConnection();
	private String loginId;

	//1つの要素削除
	public int deleteId(String loguinId) {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		int result = 1;
		String sql = "delete login_user_transaction where login_id=?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginId);

			result = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}


	//管理者以外全て削除
	public int deleteUserList() throws SQLException{

		//管理者以外とuser_idを削除
		String sql ="delete from login_user_transaction where admin_flg is null or admin_flg<> '1' ";
		PreparedStatement ps;
		int result =0;

		try{
			ps=con.prepareStatement(sql);
			//更新したものをresultに代入
			result=ps.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return result;

		}



	public String getLoginId() {
		return loginId;
	}


	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
}
