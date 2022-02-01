<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>商品一覧</title>
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
		<s:if test="itemInfoDTOList==null">
			<h3>ご購入情報はありません。</h3>
		</s:if>
		<s:elseif test="message==null">
			<h3>ご購入情報は以下になります。</h3>
			<table border="1">
					<tr>
						<th>ID</th>
						<th>商品名</th>
						<th>値段</th>
						<th>在庫</th>
						<th>登録日</th>
						<th>更新日</th>
						<th>詳細</th>
						<th>アクション</th>
					</tr>
				<s:iterator value="itemInfoDTOList">
					<tr>
						<td><s:property value="id"/></td>
						<td><s:property value="itemName"/></td>
						<td><s:property value="itemPrice"/><span>円</span></td>
						<td><s:property value="itemStock"/><span>個</span></td>
						<td><s:property value="insert_date"/></td>
						<td><s:property value="updated_date"/></td>
						<td><a href='<s:url action="ItemDetailsAction">
						<s:param name="id" value="%{id}"/></s:url>'>詳細</a></td>
						<td><a href='<s:url action="ItemListDeleteConfirmAction">
						<s:param name="id" value="%{id}"/></s:url>'>削除</a></td>
					</tr>
				</s:iterator>
			</table>
			<tr>
				<td>
				<a href='<s:url action="ItemListDeleteConfirmAction"/>'><s:submit value="全て削除" id="delete"/></a>
				</td>
			</tr>
		</s:elseif>
		<s:if test="message !=null">
			<h3><s:property value="message"/></h3>
		</s:if>
		<div id ="text-right">
			<p>管理者TOP画面は<a href='<s:url action="AdminAction"/>'>こちら</a></p>
		</div>
	</div>
</div>
<div id="footer">
	sample ECsite 2022 year
</div>

</body>
</html>