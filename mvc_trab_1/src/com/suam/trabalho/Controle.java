package com.suam.trabalho;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controle
 */
@WebServlet("/Controle")
public class Controle extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Controle() {
        super();
   }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String palavra = request.getParameter("palavra");
		String quantidade = request.getParameter("quantidade");

		//**************************************
		//Checando valores  no console
		int qtd = Integer.parseInt(quantidade);
		System.out.println("valores recebidos: ");
		System.out.println(palavra+"\n");
		System.out.println(qtd);
		//**************************************
		
		request.setAttribute("palavra", palavra);
		request.setAttribute("quantidade", quantidade);
		request.getRequestDispatcher("trabalho_01.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
