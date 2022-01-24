package template.sample.dto;

public class LoginDTO {

	//フィールド変数を宣言
	private String loginId;
	private String loginPassword;
	private String userName;
	private String AdminloginId;
	//偽を宣言する
	private boolean loginFlg=false;
	private String adminFlg;

	//特定のフィールドに対し、そのデータを外部から取得するメソッド
	//Actionから呼び出され、loginIdの値をActionに渡す
	public String getLoginId(){
		return loginId;
	}
	//DAOから呼び出され、引数として受け取った値を自身のloginIdに格納
	public void setLoginId(String loginId){
		this.loginId=loginId;
	}
	//Actionに返す
	public String getLoginPassword(){
		return loginPassword;
	}
	//格納
	public void setLoginPassword(String loginPassword){
		this.loginPassword=loginPassword;
	}
	//Actonに返す
	public String getUserName(){
		return userName;
	}
	//格納
	public void setUserName(String userName){
		this.userName=userName;
	}
	public boolean getLoginFlg(){
		return loginFlg;
	}
	public void setLoginFlg(boolean loginFlg){
		this.loginFlg=loginFlg;
	}
	public String getAdminloginId() {
		return AdminloginId;
	}
	public void setAdminloginId(String adminloginId) {
		AdminloginId = adminloginId;
	}
	public String getAdminFlg() {
		return adminFlg;
	}
	public void setAdminFlg(String adminFlg) {
		this.adminFlg = adminFlg;
	}


}
