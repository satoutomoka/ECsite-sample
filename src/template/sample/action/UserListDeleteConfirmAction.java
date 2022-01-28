package template.sample.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteConfirmAction extends ActionSupport {
	String id;

	public String execute(){
		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		id = this.id;
	}


}
