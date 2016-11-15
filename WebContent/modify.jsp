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
						<li><a href="msg.jsp">留言板</a></li>
						<li><a href="index.jsp">首頁</a></li>

					</ul>
				</nav>
				<aside>
					<ul>
						<li><a href="search.jsp">1系統</a></li>
						<li><a href="login.jsp">登入</a></li>
						<li><a href="application.jsp">2系統</a></li>
						<li><a href="signed.jsp">3系統</a></li>
						<li><a href="management.jsp">4系統</a></li>
					</ul>
					<figure>
						<img src="images/Ofish.png" alt="" width="90%">
						<figcaption>Odise & New Fish</figcaption>
					</figure>
				</aside>
				<article>
					<%
						ArrayList<String[]> query = (ArrayList<String[]>) request.getSession().getAttribute("query");
						String msg_key = request.getParameter("msg_key");
						String[] strs = null;
						for (String[] str : query) {
							if (str[0].equals(msg_key)) {
								strs = str;
								break;
							}
						}
					%>
					<section>
						<form action="Main" method="post">
							<table width="300">
								<tr>
									<td colspan="2" align="center"><h1>修改</h1></td>
								</tr>
								<tr>
									<td>標題</td>
									<td><input type="text" name="subject" value="<%=strs[1]%>" /></td>
								</tr>
								<tr>
									<td>名字</td>
									<td><input type="text" name="name" value="<%=strs[2]%>" /></td>
								</tr>
								<tr>
									<td>電話</td>
									<td><input type="text" name="phone" value="<%=strs[3]%>" /></td>
								</tr>
								<tr>
									<td>電子郵件</td>
									<td><input type="text" name="email" value="<%=strs[4]%>" /></td>
								</tr>
								<tr>
									<td>日期</td>
									<td><%=strs[6]%></td>
								</tr>
								<tr>
									<td>內容</td>
									<td><textarea type="text" name="area" rows="5" required><%=strs[5]%></textarea></td>
								</tr>
								<tr>
									<td></td>
									<td><input type="submit" name="update" value="修改" /> <input
										type="reset" name="reset" value="重設" /> <input type="submit"
										name="cancel" value="取消" /></td>
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