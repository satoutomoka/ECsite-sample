package template.sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import template.sample.dto.AdminLoginDTO;
import template.sample.util.DBConnector;

public class AdminLoginDAO {

	public AdminLoginDTO getLoginadminInfo(String AdminloginId,String loginPassword){

		//DBにインスタンス化とDB接続
		DBConnector dbConnector =new DBConnector();
		Connection connection =dbConnector.getConnection();
		AdminLoginDTO AdminLoginDTO =new AdminLoginDTO();

		//sql文を書く
		String sql="select * from login_user_transaction where login_pass=? and admin_flg=?";
		try{
			//PreparedStatementに代入
			PreparedStatement preparedStatement=connection.prepareStatement(sql);

			//定義したSQL文の1の?にActionから送られたusernameそれぞれに入る
			preparedStatement.setString(1,loginPassword);
			preparedStatement.setString(2,AdminloginId);

			//ResultSetインターフェイスのオブジェクトとして取得
			//executeQueryでDBから何らかの結果が返ってくる
			ResultSet resultSet=preparedStatement.executeQuery();

			//if(resultSet.next())は結果セットにまだ結果がある場合は、次の結果に移動して何かをするという意味
			//loginDTOにデータを格納する
			if(resultSet.next()){
				AdminLoginDTO.setLoginPassword(resultSet.getString("login_pass"));
				AdminLoginDTO.setAdminloginId(resultSet.getString("admin_flg"));

				//かつlogin_idはActionへ	//!=(ノットイコール)正しくなければtrue
				if(resultSet.getString("admin_flg")!=null){
					AdminLoginDTO.setAdminFlg(true);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		//dtoに入った値をActionへ
		return AdminLoginDTO;
	}
}
