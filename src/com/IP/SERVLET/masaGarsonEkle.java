package com.IP.SERVLET;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IP.DAO.*;

import com.IP.Classes.*;
/**
 * Servlet implementation class masaGarsonEkle
 */
@WebServlet("/masaGarsonEkle")
public class masaGarsonEkle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public masaGarsonEkle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String gKod=request.getParameter("garson");
		int garson=Integer.valueOf(gKod);
		
		String m1=request.getParameter("masa1");
		int masa1=Integer.valueOf(m1);
		
		String m2=request.getParameter("masa2");
		int masa2=Integer.valueOf(m2);
		
		if(masa1!=0) {
			
			Masa masa=new Masa(masa1,garson);
			MasaDAO masaDao=new MasaDAO();
			masaDao.Update(masa);
		}
		
		if(masa2!=0) {
			
			Masa masa=new Masa(masa2,garson);
			MasaDAO masaDao=new MasaDAO();
			masaDao.Update(masa);
		}
		
		response.sendRedirect("gArayuz.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
