package com.IP.SERVLET;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.IP.Classes.*;
import com.IP.DAO.*;
/**
 * Servlet implementation class garsonEkle
 */
@WebServlet("/garsonEkle")
public class garsonEkle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public garsonEkle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String garsonAd=request.getParameter("garsonAd");
		String garsonTc=request.getParameter("garsonTc");
		String garsonDogumTarihi=request.getParameter("garsonDogumTarihi");
		
		Garsonlar garson=new Garsonlar(garsonAd,garsonTc,garsonDogumTarihi);
		GarsonlarDAO garsonDao=new GarsonlarDAO();
		garsonDao.Add(garson);
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
