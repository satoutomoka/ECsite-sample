<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="./css/style.css">
		<title>itemCreate画面</title>
	</head>
	<body>
		<div id="header">
			<ul>
				<li><a href="AdminAction" type="submit">管理者Top</a></li>
			</ul>
		</div>
		<div id="main">
			<div id="top">
				<p>商品登録</p>
			</div>
			<div>
				<s:if test="errorMessage !=''">
					<s:property value="errorMessage" escape="false"/>
				</s:if>
				<s:form action="ItemCreateConfirmAction">
					<table>
						<tr id="box">
							<td>
								<label>商品名:　</label>
							</td>
							<td>
								<input type="text" name="itemName" placeholder="itemName" required>
							</td>
						</tr>
						<tr id="box">
							<td>
								<label>値段:　</label>
							</td>
							<td>
								<input type="text" name="itemPrice" placeholder="itemPrice" required>
							</td>
						</tr>
						<tr id="box">
							<td>
								<label>在庫:　</label>
							</td>
							<td>
								<input type="text" name="itemStock" placeholder="itemStock" required>
							</td>
						</tr>
					</table>
					<br>
					<input type="submit" value="登録">
				</s:form>
			</div>
			<div id="footer">
				sample ECsite 2022 year
			</div>
		</div>
	</body>
</html>