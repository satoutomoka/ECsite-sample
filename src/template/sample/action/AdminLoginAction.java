package template.sample.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import template.sample.dao.LoginDAO;
import template.sample.dto.LoginDTO;

			//サブクラス　//継承　//スーパークラス //実装　//インターフェイス
public class AdminLoginAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	public Map<String,Object>session;

	//classの下に書くといくつか使われていると設計上の問題勘違いされるためexecute内に書くのが好ましい
	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO =new LoginDTO();


	public String execute(){

		String result =ERROR;
		loginDTO=loginDAO.getLoginUserInfo(loginUserId,loginPassword);
		session.put("loginUser",loginDTO);

		//管理者かユーザーなのかの判断
		if(((LoginDTO)session.get("loginUser")).getLoginFlg()){
			//管理者の条件
			if((((LoginDTO)session.get("loginUser")).getAdminFlg()!= null)
					&&(((LoginDTO)session.get("loginUser")).getAdminFlg().equals("1"))){

						session.put("login_user_id",loginDTO.getLoginId());

						result ="admin";
						return result;

					}else{
						result=SUCCESS;
						return result;

					}
		}
		return result;

	}
	public String getLoginUserId(){
		return loginUserId;
	}
	public void setLoginUserId(String loginUserId){
		this.loginUserId =loginUserId;
	}
	public String getLoginPassword(){
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword){
		this.loginPassword =loginPassword;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

}