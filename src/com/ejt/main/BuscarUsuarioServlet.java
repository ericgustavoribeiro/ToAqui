package com.ejt.main;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ejt.fachada.Fachada;
import com.ejt.usuario.Usuario;

/**
 * Servlet implementation class BuscarUsuarioServlet
 */
@WebServlet("/BuscarUsuarioServlet")
public class BuscarUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Fachada fachada = Fachada.getInstance();
		String email = "ericgustavowp@hotmail.com";
		Usuario usuario;
		try {
			usuario = fachada.usuarioProcurarEmail(email);
			request.setAttribute("nome", usuario.getNome());
			RequestDispatcher rd = request.getRequestDispatcher("NewFile.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarUsuarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	
//		String email = request.getParameter("email");
//		
//		Fachada fachada = Fachada.getInstance();
//		
//		try {
//			System.out.println(fachada.usuarioProcurarEmail(email));
//		Usuario usuario = fachada.usuarioProcurarEmail(email);
//	
//		response.setContentType("text/html");
//		request.setAttribute("nome", usuario.getNome());
//
//		
//		
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		
//		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
