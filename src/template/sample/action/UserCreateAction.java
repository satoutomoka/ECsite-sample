package template.sample.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

public class UserCreateAction extends ActionSupport {
	private Map<String,Object>session;

	public String execute(){
		return SUCCESS;
	}
	public Map<String,Object>getSession(){
		return this.session;
	}
	public void setSession(Map<String,Object>session){
		this.session=session;
	}

}
