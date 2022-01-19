package template.sample.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class GoBackAction extends ActionSupport implements SessionAware{
	public Map<String,Object>session;

	public String execute(){

		//もし新規登録だったら
		//ログインしていない場合
		String result ="Userback";

		return result;

		//そうでなければ
		//String result ="Itemback";

		//return result;

	}
	public Map<String,Object>getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

}