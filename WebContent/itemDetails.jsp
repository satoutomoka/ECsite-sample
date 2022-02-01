<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>商品情報詳細画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>商品詳細</p>
		</div>
		<s:if test="itemDetailsDTO==null">
			<h3>商品の詳細情報はありません。</h3>
		</s:if>
		<s:elseif test="message == null">
			<h3>商品情報は以下になります。</h3>
			<table border="1">
				<tr>
					<th>Id</th>
					<td><s:property value="itemDetailsDTO.id"/></td>
				</tr>
				<tr>
					<th>商品名</th>
					<td><s:property value="itemDetailsDTO.itemName"/></td>
				</tr>
				<tr>
					<th>値段</th>
					<td><s:property value="itemDetailsDTO.itemPrice"/><span>円</span></td>
				</tr>
				<tr>
					<th>在庫</th>
					<td><s:property value="itemDetailsDTO.itemStock"/><span>個</span></td>
				</tr>
				<tr>
					<th>登録日</th>
					<td><s:property value="itemDetailsDTO.insert_date"/></td>
				</tr>
				<tr>
					<th>更新日</th>
					<td><s:property value="itemDetailsDTO.updated_date"/></td>
				</tr>
			</table>
			<s:form action="ItemDeleteConfirmAction">
				<s:hidden name="id" value="%{id}"/>
				<s:submit value="削除"/>
				
			</s:form>
		</s:elseif>
		<div id ="text-right">
			<p>商品一覧は<a href='<s:url action="ItemListAction"/>'>こちら</a></p>
		</div>
		</div>
		<div id ="footer"></div>
	</body>
</html>