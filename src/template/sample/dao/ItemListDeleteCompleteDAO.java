package template.sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import template.sample.util.DBConnector;

public class ItemListDeleteCompleteDAO {

	private DBConnector db =new DBConnector();
	private Connection con =db.getConnection();

	//DBから購入履歴を取得するためのメソッド
	public int deleteItemList(String id)throws SQLException{

		int count =1;
		String sql="delete from item_info_transaction where id=?";
		PreparedStatement ps;

		try{
			//PreparedStatementに代入
			ps=con.prepareStatement(sql);
			ps.setString(1, id);

			//更新したものをresultに代入
			count=ps.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return count;

	}

}