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
						<li><a id="link" href="msg.jsp">留言板</a></li>
						<li><a href="#">首頁</a></li>
					</ul>
				</nav>
				<aside>
					<ul>
						<li><a href="search.jsp">4系統</a></li>
						<li><a href="login.jsp">登入</a></li>
						<li><a href="application.jsp">3系統</a></li>
						<li><a href="signed.jsp">1系統</a></li>
						<li><a href="management.jsp">2系統</a></li>
					</ul>
					<figure>
						<img src="images/Ofish.png" alt="" width="90%">
						<figcaption>Odise & New Fish</figcaption>
					</figure>
				</aside>
				<article>
					<section>
						<h1>系統訊息</h1>
						<figure>
							<img src="images/article_gift.jpg" alt="">
						</figure>
						<p>上一篇我們介紹了 Responsive Web Design 之後，這次要來詳細介紹 CSS3 Media
							Queries 了。在上一篇中，我們提到 Responsive Web Design 的實作方式有大半都是利用 CSS3
							Media Queries 來達成。而顧名思義 Media Queries 就是要在支援 CSS3 的瀏覽器中才能正常工作，IE8
							以下不支援。而 Media Queries 的套用方法千變萬化，要套用在什麼樣的裝置中，都可以自己來定義。 ## 關於 Media
							Queries</p>
					</section>
					<section>
						<h1>簽核通知</h1>
						<figure>
							<img src="images/article_gift.jpg" alt="">
						</figure>
						<p>到底什麼是 Media Queries ？一般我們在開發 HTML + CSS 網頁中，都會有一份 CSS
							來控制網頁的樣式表。而隨著各式各樣不同大小、長寬與解析度的裝置的興起，我們在開發網頁只考慮到自己的螢幕顯示的如何，是多麼的膚淺哪。So，在開發者的螢幕看到的網頁或許很漂亮，那，其他人的螢幕呢？所以，我們需要的是能夠控制不同大小的螢幕（裝置），在其上所顯示出來的樣式，讓各式各樣來自不同地方的
							User 都能夠有最佳的瀏覽體驗。</p>
					</section>
				</article>
				<footer>Java2016&copy;Project</footer>
			</div>
		</section>
		<form action="Main" method="post" name="hidden">
			<input type="hidden" name="query" value="query" />
		</form>
	</div>
	<script type="text/javascript">
		var oLink = document.getElementById('link');
		oLink.addEventListener('click', clicks, false);

		function clicks() {
			//            alert("Warning");
			var from1 = document.getElementById("hidden");
			from1.submit();
			document.hidden.submit;
		}
	</script>
</body>


</html>