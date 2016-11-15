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
						<li><a href="index.jsp">首頁</a></li>
						<li><a href="msg.jsp">留言板</a></li>
						<li><a href="http://www.google.com.tw">google</a></li>

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
					<section>
						<%							
							Cookie[] cookies = request.getCookies();
							if (cookies != null) {
								for (Cookie cook : cookies) {
									System.out.println(cook.getName());
									if (cook.getName().equals("userMain")) {
										//response.sendRedirect();
										//request.setAttribute("queryMsg", "query");
										cook.setMaxAge(0);
										response.addCookie(cook);
										request.getRequestDispatcher("index.jsp").forward(request, response);
									}
								}
							}
						%>
						
						<br>
						<form action="Main" method="post">
							<table width="300">
							<tr><td colspan="2" align="center"><h1>使用者登入</h1></td></tr>
								<tr>
									<td>使用者名稱</td>
									<td><input type="text" name="user" value="odise" /></td>
								</tr>
								<tr>
									<td>密碼</td>
									<td><input type="password" name="pass" value="116025" /></td>
								</tr>
								<tr>
									<td></td>
									<td><input type="submit" name="login" value="登入" /> <input
										type="submit" name="forget" value="忘記密碼" /></td>
								</tr>
							</table>
							<input type="hidden" name="msg" value="" />
						</form>
						<%
							String fail = (String) request.getAttribute("fail");
							fail = fail == null ? "" : fail;
						%>
						<h1><%=fail%>
							<br>${fail}
						</h1>

					</section>
				</article>
				<footer>Java2016&copy;Project</footer>
			</div>
		</section>
	</div>

</body>

</html>