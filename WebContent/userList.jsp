<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ユーザー一覧</title>
</head>
<body>
	<div id="header">
		<ul>
			<li><a href="AdminAction" type="submit">管理者Top</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<p>ユーザー一覧</p>
		</div>
		<div>
		<s:if test="userInfoDTOList==null">
			<h3>ユーザー登録情報はありません。</h3>
		</s:if>
		<s:elseif test="message==null">
			<h3>ユーザー登録情報は以下になります。</h3>
			<table border="1">
					<tr>
						<th>ログインID</th>
						<th>ログインPASS</th>
						<th>ユーザー名</th>
						<th>登録日</th>
						<th>更新日</th>
						<th>アクション</th>
					</tr>
					<s:iterator value="userInfoDTOList">
						<tr>
							<td><s:property value="loginId"/></td>
							<td><s:property value="loginPass"/></td>
							<td><s:property value="userName"/></td>
							<td><s:property value="insert_date"/></td>
							<td><s:property value="update_date"/></td>
							<td><a href='<s:url action="UserListDeleteConfirmAction"/>'>
							<s:param name="id" value="%{id}"/>削除</a></td>
						</tr>
					</s:iterator>
				</table>
				<br>
				<tr>
					<td>
						<a href='<s:url action="UserListDeleteConfirmAction"/>'><s:submit value="全て削除" id="delete"/></a>
					</td>
				</tr>
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