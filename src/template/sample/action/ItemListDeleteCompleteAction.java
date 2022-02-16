package template.sample.action;

import java.sql.SQLException;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import template.sample.dao.ItemListDeleteCompleteDAO;
import template.sample.dto.ItemInfoDTO;

public class ItemListDeleteCompleteAction extends ActionSupport{
	private String message;
	private List<ItemInfoDTO> ItemInfoDTOList;
	private String[] checkList;

	public String execute()throws SQLException{
		String result =ERROR;
		ItemListDeleteCompleteDAO itemListDeleteCompleteDAO =new ItemListDeleteCompleteDAO();
		int count = 0;

		for (String id : checkList) {
			count += itemListDeleteCompleteDAO.deleteItemList(id);
		}

		if(count >0){
			setMessage("商品情報を正しく削除しました。");
		}else{
			setMessage("商品情報の削除に失敗しました。");
		}
		result =SUCCESS;
		return result;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public List<ItemInfoDTO> getItemInfoDTOList() {
		return ItemInfoDTOList;
	}

	public void setItemInfoDTOList(List<ItemInfoDTO> itemInfoDTOList) {
		ItemInfoDTOList = itemInfoDTOList;
	}
	public String[] getCheckList() {
		return checkList;
	}

	public void setCheckList(String[] checkList) {
		this.checkList = checkList;
	}

}
