package template.sample.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import template.sample.dao.ItemListDAO;
import template.sample.dto.ItemInfoDTO;

public class ItemListAction extends ActionSupport implements SessionAware{
	//キーがString
	private Map<String,Object> session;
	//Listは複数件呼び出せる
	private List<ItemInfoDTO>itemInfoDTOList =new ArrayList<ItemInfoDTO>();

	public String execute() throws SQLException{
		ItemListDAO itemListDAO =new ItemListDAO();
		itemInfoDTOList = itemListDAO.getItemList();

		if(!(itemInfoDTOList.size() >0)){

			itemInfoDTOList =null;
		}
		String result =SUCCESS;
		return result;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<ItemInfoDTO> getItemInfoDTOList() {
		return itemInfoDTOList;
	}

	public void setItemInfoDTOList(List<ItemInfoDTO> itemInfoDTOList) {
		this.itemInfoDTOList = itemInfoDTOList;
	}

}
