<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>itemListDeleteConfirm</title>
<script type="text/javascript">
		function submitAction(url){
			$('form').attr('action',url);
			$('form').submit();
		}
	</script>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>商品一覧削除確認</p>
		</div>
		<div>
			<h3>以下の商品を削除します。よろしいですか？</h3>
			<!-- もし1つの削除が押下されたら -->
			<s:if test="%{userInfoDTOList < 2}">
				<s:form action="UserListDeleteCompleteAction">
					<input type="hidden" name="deleteFlg" value=null>
					<input type="submit" value="OK1">
				</s:form>
			</s:if>
			<s:else>
				<s:form action="ItemListDeleteCompleteAction">
					<table border="1">
					<tr>
						<th>ID</th>
						<th>商品名</th>
						<th>値段</th>
						<th>在庫</th>
						<th>登録日</th>
						<th>更新日</th>
						<th colspan="2">アクション</th>
					</tr>
					<tr>
						<td><s:property value="session.id"/></td>
						<td><s:property value="session.itemName"/></td>
						<td><s:property value="session.itemPrice"/></td>
						<td><s:property value="session.itemStock"/></td>
						<td><s:property value="session.insert_date"/></td>
						<td><s:property value="session.update_date"/></td>
					</tr>
				</table>
					<input type="hidden" name="deleteFlg" value="1">
					<input type="submit" value="OK2">
				</s:form>
			</s:else>
			<br>
		<div>
			<input type="button" value="☜☜☜　Back" onclick="submitAction('ItemListAction')"/>
		</div>
		</div>
		<div id="footer"></div>
	</div>
</body>
</html>