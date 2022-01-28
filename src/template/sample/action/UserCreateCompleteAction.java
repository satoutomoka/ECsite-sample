package template.sample.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import template.sample.dao.UserCreateCompleteDAO;

public class UserCreateCompleteAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String userName;
	private Map<String,Object>session;

	public String execute()throws SQLException{
														//DBを経由して、入力された内容をDBに登録
		UserCreateCompleteDAO userCreateCompleteDAO =new UserCreateCompleteDAO();
		userCreateCompleteDAO.createUser(session.get("loginUserId").toString(),
				session.get("loginPassword").toString (),
				session.get("userName").toString ());

		String result=SUCCESS;

		return result;
	}
	//Actionへ返す
	public String getLoginUserId(){
		return loginUserId;
	}
	//格納
	public void setLoginUserId(String loginUserId){
		this.loginUserId =loginUserId;
	}
	public String getLoginPassword(){
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword){
		this.loginPassword =loginPassword;
	}
	public String getUserName(){
		return userName;
	}
	public void setUserName(String userName){
		this.userName =userName;
	}
	public Map<String,Object>getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
}
