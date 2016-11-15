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
					<section>
						<%
							Cookie[] cookies = request.getCookies();
							String user = null;
							for (Cookie cook : cookies) {
								if (cook.getName().equals("userMain")) {
									user = cook.getName();
									break;
								}
							}
							if (user == null) {
								request.setAttribute("msg", "notLogin");
								request.getRequestDispatcher("login.jsp").forward(request, response);
							}

							ArrayList<String[]> query = null;
							query = (ArrayList<String[]>) request.getSession().getAttribute("query");
							if (query == null) {
								request.setAttribute("queryMsg", "query");
								request.getRequestDispatcher("Main").forward(request, response);
							}
							for (String[] str : query) {
								System.out.println(str[0] + " " + str[1]);
							}
						%>

						<table border=1>
							<tr>
								<td colspan="4" align="center"><h1>留言版</h1></td>
							</tr>

							<tr align="center">
								<td>名字</td>
								<td>電話</td>
								<td>電子郵件</td>
								<td align="center"><a href="contact.jsp">我要留言</a></td>
							</tr>
							<%
								String str = request.getParameter("page");
								int pages = 1;
								if (str != null)
									pages = Integer.parseInt(str);

								int length = 1;
								if (query != null) {
									length = query.size() > ((pages - 1) * 4 + 4) ? ((pages - 1) * 4 + 4) : query.size();
									int startValue = pages == 1 ? 0 : ((pages - 1) * 4);
									System.out.println("startValue = " + startValue + " ; length = " + length);
									for (int i = startValue; i < length; i++) {
							%>
							<tr>
								<td align="center"><a
									href="detail.jsp?detail=<%=query.get(i)[0]%>"><%=query.get(i)[1]%></a></td>
								<td align="center"><%=query.get(i)[2]%></td>
								<td align="center"><%=query.get(i)[3]%></td>
								<td><form action="Main" method="post">
										<input type="submit" name="update" value="修改" /> <input
											type="submit" name="del" value="刪除" /> <input type="hidden"
											name="msg_key" value="<%=query.get(i)[0]%>" />
									</form></td>
							</tr>
							<%
								}
								}
							%>
						</table>
						<br> <br>
						<h2>
							<%
								if (pages > 1) {
							%>
							<a href="msg.jsp?page=1"> 最前頁 </a>
							<%
								}
							%>
							<%
								int size = 0;
								if (query != null) {
									size = query.size() % 4 == 0 ? query.size() / 4 : query.size() / 4 + 1;
								}
								for (int i = 0; i < size; i++) {
							%>
							<a href="msg.jsp?page=<%=(i + 1)%>"> 第<%=i + 1%>頁
							</a>

							<%
								}
							%>
							<%
								if (pages < size && length > 3) {
							%>
							<a href="msg.jsp?page=<%=size%>"> 最末頁 </a>
							<%
								}
							%>
						</h2>

					</section>
				</article>
				<footer>Java2016&copy;Project</footer>
			</div>
		</section>
	</div>

</body>

</html>