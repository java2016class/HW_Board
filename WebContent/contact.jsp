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
					<section>

						<form action="Main" method="post">
							<table width="300">
								<tr>
									<td colspan="2" align="center"><h1>聯絡我們</h1></td>
								</tr>
								<tr>
									<td>標題</td>
									<td><input type="text" name="subject" /></td>
								</tr>
								<tr>
									<td>名字</td>
									<td><input type="text" name="name" /></td>
								</tr>
								<tr>
									<td>電話</td>
									<td><input type="text" name="phone" /></td>
								</tr>

								<tr>
									<td>電子郵件</td>
									<td><input type="text" name="email" /></td>
								</tr>
								<tr>
									<td>內容</td>
									<td><textarea type="text" name="area" rows="5"></textarea></td>
								</tr>
								<tr>
									<td></td>
									<td><input type="submit" name="insert" value="留言" /> <input
										type="reset" name="reset" value="重設" />
										<input
										type="submit" name="cancel" value="取消" /></td>
								</tr>
							</table>
							<input type="hidden" name="msg" value="" />
						</form>
					</section>
				</article>
				<footer>Java2016&copy;Project</footer>
			</div>
		</section>
	</div>

</body>

</html>