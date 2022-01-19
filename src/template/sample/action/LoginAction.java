package template.sample.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import template.sample.dao.BuyItemDAO;
import template.sample.dao.LoginDAO;
import template.sample.dto.BuyItemDTO;
import template.sample.dto.LoginDTO;

			//サブクラス　//継承　//スーパークラス //実装　//インターフェイス
public class LoginAction extends ActionSupport implements SessionAware{

	private String loginUserId;
	private String loginPassword;
	private String result;
	private Map<String,Object>session;

	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO =new LoginDTO();
	private BuyItemDAO BuyItemDAO = new BuyItemDAO();


	public String execute(){

		result =ERROR;
		//DAOのgetLoginUserInfoを代入
		loginDTO=loginDAO.getLoginUserInfo(loginUserId,loginPassword);
		//Map<String,Object>sessionでのデータ追加
		session.put("loginUser",loginDTO);

		//loginUserがDTOのloginUserがtrueであれば
		if(((LoginDTO)session.get("loginUser")).getLoginFlg()){
			//成功
			result=SUCCESS;

			BuyItemDTO buyItemDTO=BuyItemDAO.getBuyItemInfo();
			//データ追加(次の画面の情報)
			//loginIdの値がDTOからくる
			session.put("login_user_id",loginDTO.getLoginId());
			session.put("id",buyItemDTO.getId());
			session.put("buyItem_name",buyItemDTO.getItemName());
			session.put("buyItem_price",buyItemDTO.getItemPrice());

			//strutsに送る
			return result;
		}
		//strutsに送る
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
	public Map<String,Object>getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

}