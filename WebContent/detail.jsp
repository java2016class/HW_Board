<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
<!-- <meta charset="UTF-8"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Untitled Document</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--        <link rel="stylesheet" type="text/css" href="/project/query.css">-->
<link rel="stylesheet" type="text/css" href="css/style.css"
	media="screen and (min-width:700px)">
<link rel="stylesheet" type="text/css" href="css/tablet.css"
	media="screen and (max-width:699px)">
<link rel="stylesheet" type="text/css" href="css/moblie.css"
	media="screen and (max-width:480px)">
</head>

<body>
	<div class="body">
		<section>
			<div id="section1">
				<banner>
				<section>
					<div>禮品公關系統(首頁試作版)</div>
				</section>
				</banner>
				<nav>
					<ul>
						<li><a href="http://www.google.com.tw">google</a></li>
						<li><a href="#">留言板</a></li>
						<li><a href="index.jsp">首頁</a></li>
					</ul>
				</nav>
				<aside>
					<ul>
						<li><a href="search.jsp">查詢系統</a></li>
						<li><a href="login.jsp">登入</a></li>
						<li><a href="application.jsp">申/調系統</a></li>
						<li><a href="signed.jsp">簽核系統</a></li>
						<li><a href="management.jsp">管理系統</a></li>
					</ul>
					<figure>
						<img src="images/Ofish.png" alt="" width="90%">
						<figcaption>Odise & New Fish</figcaption>
					</figure>
				</aside>
				<article>
					<%
						ArrayList<String[]> query = (ArrayList<String[]>) request.getSession().getAttribute("query");
						String msg_key = request.getParameter("detail");
						String[] strs = null;
						for (String[] str : query) {
							if (str[0].equals(msg_key)) {
								strs = str;
								break;
							}
						}
						System.out.print(strs.toString());
					%>
					<section>
						<form action="msg.jsp" method="post">
							<table width="300">
								<tr>
									<td colspan="2" align="center"><h1><%=strs[2]%>的留言內容
										</h1></td>
								</tr>
								<tr>
									<td>標題</td>
									<td><%=strs[1]%></td>
								</tr>
								<tr>
									<td>名字</td>
									<td><%=strs[2]%></td>
								</tr>
								<tr>
									<td>電話</td>
									<td><%=strs[3]%></td>
								</tr>
								<tr>
									<td>電子郵件</td>
									<td><%=strs[4]%></td>
								</tr>
								<tr>
									<td>日期</td>
									<td><%=strs[6]%></td>
								</tr>
								<tr>
									<td>內容</td>
									<td><textarea type="text" name="area" rows="5"><%=strs[5]%></textarea></td>
								</tr>
								<tr>
									<td></td>
									<td><input type="submit" name="cancel" value="回前頁" /></td>
								</tr>
							</table>
							<input type="hidden" name="msg_id" value="<%=strs[0]%>" />
						</form>
					</section>
				</article>
				<footer>Java2016&copy;Project</footer>
			</div>
		</section>
	</div>

</body>

</html>