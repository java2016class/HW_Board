package tw.youth.java2016.giftservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.youth.java2016.Server;

/**
 * Servlet implementation class Main
 */
@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static Server server;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Main() {
		super();
		// TODO Auto-generated constructor stub
		server = new Server();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		System.out.println("query " + request.getParameter("query"));
		System.out.println("query " + request.getAttribute("query"));

		if (request.getAttribute("queryMsg") != null) {
			query(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		// String test = request.getParameter("test");
		// request.setAttribute("test", test);
		// request.getRequestDispatcher("/test.jsp").forward(request, response);
		if (request.getParameter("queryMsg") != null) {
			request.getSession().setAttribute("query", server.query("board", ""));
			response.sendRedirect("msg.jsp");
		}

		System.out.println("insert : " + request.getParameter("insert"));
		if (request.getParameter("insert") != null) {
			insert(request, response);
		}

		System.out.println("msg_key : " + request.getParameter("msg_key"));
		if (request.getParameter("msg_key") != null) {
			if (request.getParameter("update") != null) {
				request.getRequestDispatcher("modify.jsp").forward(request, response);
			}
			if (request.getParameter("del") != null) {
				request.getRequestDispatcher("del.jsp").forward(request, response);
			}
		}

		System.out.println("msg_id : " + request.getParameter("msg_id"));
		if (request.getParameter("msg_id") != null && request.getParameter("cancel") == null) {
			if (request.getParameter("update") != null) {
				update(request, response);
			}
			if (request.getParameter("del") != null) {
				del(request, response);
			}
		}

		System.out.println("cancel : " + request.getParameter("cancel"));
		if (request.getParameter("cancel") != null) {
			request.getRequestDispatcher("msg.jsp").forward(request, response);
		}

		System.out.println("login : " + request.getParameter("login"));
		if (request.getParameter("login") != null) {
			String[] user = { request.getParameter("user"), request.getParameter("pass") };
			System.out.println(user[0] + "  " + user[1]);
			System.out.println(server.chkLogin(user));
			if (server.chkLogin(user)) {
				Cookie cookie = new Cookie("userMain", user[0]);
				cookie.setMaxAge(5 * 60); // 7*24*60*60 = 7天時間 現在設定5分鐘
				response.addCookie(cookie);// 儲存Cookie
				// 儲存query的資訊至Server;

				System.out.println("chk msg : " + request.getParameter("msg"));
				if (!request.getParameter("msg").equals("notLogin")) {
					request.getRequestDispatcher("index.jsp").forward(request, response);
				} else {
					request.getRequestDispatcher("msg.jsp").forward(request, response);
				}
			} else {
				request.setAttribute("fail", "登入失敗");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}

	}

	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().setAttribute("query", server.query("board", ""));
		request.getRequestDispatcher("msg.jsp").forward(request, response);
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] msg = { request.getParameter("subject"), request.getParameter("name"), request.getParameter("phone"),
				request.getParameter("email"), request.getParameter("area") };
		server.insertMsg(msg);
		query(request, response);
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] msg = { request.getParameter("msg_id"), request.getParameter("subject"), request.getParameter("name"),
				request.getParameter("phone"), request.getParameter("email"), request.getParameter("area") };
		server.updateMsg(msg);
		query(request, response);
	}

	private void del(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("msg_id"));
		String[] msg = { request.getParameter("msg_id"), request.getParameter("subject"), request.getParameter("name"),
				request.getParameter("phone"), request.getParameter("email"), request.getParameter("area") };
		server.delMsg(msg);
		query(request, response);
	}

}
