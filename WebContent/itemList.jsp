<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>商品一覧</title>
<script type="text/javascript">
const checkbox3 = document.getElementsByName("checkList")
	function checkValue() {
		var checkList = document.getElementsByClassName("checkList");
		//初期化
		var checkFlg = 0;
		//条件分岐(繰り返し処理)
		for (var i = 0; i < checkList.length; i++) {
			if (checkList[i].checked) {
				checkFlg = 1;
				break;
			}
		}
		if (checkFlg == 1) {
			document.getElementById('delete').disabled = "";
		} else {
			document.getElementById('delete').disabled = "true";
		}
	}
	//チェックボックス選択
	function checkAllBox(trueOrFalse) {
	  for(i = 0; i < checkbox3.length; i++) {
	    checkbox3[i].checked = trueOrFalse
	  }
	}
</script>
</head>
<body>
	<div id="header">
		<ul>
			<li><a href="AdminAction" type="submit">管理者Top</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<p>商品一覧</p>
		</div>
		<div>
		<s:if test="ItemInfoDTOList==null">
			<h3>ご購入情報はありません。</h3>
		</s:if>
		<s:elseif test="message==null">
			<h3>ご購入情報は以下になります。</h3>
				<table border="1">
						<tr>
							<th>#</th>
							<th>ID</th>
							<th>商品名</th>
							<th>値段</th>
							<th>在庫</th>
							<th>登録日</th>
							<th>更新日</th>
							<th>詳細</th>
						</tr>
					<s:iterator value="ItemInfoDTOList">
						<tr>
							<td>
							<input type="checkbox" name="checkList"
								class="checkList" value='<s:property value="%{id}"/>'
								onchange="checkValue()" /></td>
							<td><s:property value="id"/></td>
							<td><s:property value="itemName"/></td>
							<td><s:property value="itemPrice"/><span>円</span></td>
							<td><s:property value="itemStock"/><span>個</span></td>
							<td><s:property value="insert_date"/></td>
							<td><s:property value="updated_date"/></td>
							<td><a href='<s:url action="ItemDetailsAction">
							<s:param name="id" value="%{id}"/></s:url>'>詳細</a></td>
					</s:iterator>
				</table>
				<input type="button" onClick="checkAllBox(true)" value="全選択"><br>
				<input type="button" onClick="checkAllBox(false)" value="全解除"><br>
				<a href='<s:url action="ItemListDeleteCompleteAction"/>'><s:submit value="削除" id="delete"/></a>
		</s:elseif>
		<s:if test="message !=null">
			<h3><s:property value="message"/></h3>
		</s:if>
	</div>
</div>
<div id="footer">
	sample ECsite 2022 year
</div>

</body>
</html>