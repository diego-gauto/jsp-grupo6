package ar.com.cac22550.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import ar.com.cac22550.daos.userDAO;
import ar.com.cac22550.models.user;

/**
 * Servlet implementation class login
 */
@WebServlet("/ingresar")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		user user = new user();

		user.setEmail(email);
		user.setPassword(password);
		
		userDAO uDAO = new userDAO();
		RequestDispatcher dispatcher = null;
		ResultSet rs = null;
		HttpSession session = request.getSession();
		
		try {
			rs = uDAO.exist(user);
			if(rs.next()) {
				request.setAttribute("status", "success");
				session.setAttribute("name", rs.getString("nombre"));
			} else {
				request.setAttribute("status", "failed");		
			}
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
