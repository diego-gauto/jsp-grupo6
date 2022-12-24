package ar.com.cac22550.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

import ar.com.cac22550.daos.userDAO;
import ar.com.cac22550.models.user;

/**
 * Servlet implementation class register
 */
@WebServlet("/registro")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
		String username = request.getParameter("nombre");
		String lastname = request.getParameter("apellido");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String adress = request.getParameter("domicilio");
		String city = request.getParameter("ciudad");
		String country = request.getParameter("pais");
		String zip = request.getParameter("cp");
		
		user user = new user();
		user.setNombreUsuario(username);
		user.setApellidoUsuario(lastname);
		user.setEmail(email);
		user.setPassword(password);
		user.setDomicilioUsuario(adress);
		user.setCiudad(city);
		user.setPais(country);
		user.setCodigoPostal(zip);
		
		userDAO uDAO = new userDAO();
		RequestDispatcher dispatcher = null;
		int rowCount = 0;
		HttpSession session = request.getSession();
		
		try {
			rowCount = uDAO.insert(user);
			if(rowCount>0) {
				request.setAttribute("status", "success");
				session.setAttribute("name", username);
			} else {
				request.setAttribute("status", "failed");
			}
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
