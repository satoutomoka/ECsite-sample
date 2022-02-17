package template.sample.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import template.sample.dao.UserDetailsDAO;
import template.sample.dto.UserInfoDTO;

public class UserListDeleteConfirmAction extends ActionSupport implements SessionAware{
	private String id;
	private UserInfoDTO userDetailsDTO;
	private Map<String,Object>session;

	public String execute() throws SQLException{
		UserDetailsDAO dao =new UserDetailsDAO();
		userDetailsDTO =dao.getUserInfo(id);
		if(userDetailsDTO.getLoginId() == null){
			userDetailsDTO =null;
		}
		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		id = this.id;
	}

	public UserInfoDTO getUserDetailsDTO() {
		return userDetailsDTO;
	}

	public void setUserDetailsDTO(UserInfoDTO userDetailsDTO) {
		this.userDetailsDTO = userDetailsDTO;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



}
