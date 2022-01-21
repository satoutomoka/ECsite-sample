package template.sample.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import template.sample.dao.AdminLoginDAO;
import template.sample.dto.AdminLoginDTO;

			//サブクラス　//継承　//スーパークラス //実装　//インターフェイス
public class AdminLoginAction extends ActionSupport implements SessionAware{

	private String AdminloginId;
	private String loginPassword;
	private String result;
	private Map<String,Object>session;

	private AdminLoginDAO AdminLoginDAO = new AdminLoginDAO();
	private AdminLoginDTO AdminLoginDTO =new AdminLoginDTO();


	public String execute(){

		result =ERROR;
		//DAOのgetLoginUserInfoを代入
		setAdminLoginDTO(AdminLoginDAO.getLoginadminInfo(AdminloginId,loginPassword));
		//Map<String,Object>sessionでのデータ追加
		session.put("loginAdmin",AdminLoginDTO);

		//loginUserがDTOのloginUserがtrueであれば
		if(((AdminLoginDTO)session.get("loginAdmin")).getAdminFlg()){
			//成功
			result=SUCCESS;

			//strutsに送る
			return result;
		}
		//strutsに送る
		return result;

	}
	public String getLoginUserId(){
		return AdminloginId;
	}
	public void setLoginUserId(String AdminloginId){
		this.AdminloginId =AdminloginId;
	}
	public String getLoginPassword(){
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword){
		this.loginPassword =loginPassword;
	}
	public Map<String,Object>getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
	public AdminLoginDTO getAdminLoginDTO() {
		return AdminLoginDTO;
	}
	public void setAdminLoginDTO(AdminLoginDTO adminLoginDTO) {
		AdminLoginDTO = adminLoginDTO;
	}

}