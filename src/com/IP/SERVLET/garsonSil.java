package com.IP.SERVLET;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IP.Classes.Garsonlar;
import com.IP.DAO.GarsonlarDAO;

/**
 * Servlet implementation class garsonSil
 */
@WebServlet("/garsonSil")
public class garsonSil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public garsonSil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String gKodu=request.getParameter("garsonKodu");
		int garsonKodu=Integer.valueOf(gKodu);
		
		Garsonlar garson=new Garsonlar(garsonKodu);
		GarsonlarDAO garsonDao=new GarsonlarDAO();
		garsonDao.Remove(garson);
		response.sendRedirect("gIslem.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
