package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/session")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SessionServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 세션에 사용자 정보가 없으면 login.jsp로 포워딩
		// 만약에 있으면 sessionInfo.jsp로 포워딩
		// sessionInfo.jsp에서는 세션에 담긴 사용자 정보(id, name, nickname) 출력
		if(request.getSession().getAttribute("user")==null){
			response.sendRedirect("jsp/login.jsp");
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
