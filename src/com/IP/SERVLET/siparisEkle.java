package com.IP.SERVLET;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import com.IP.DAO.*;
import java.util.*;
import com.IP.Classes.*;
/**
 * Servlet implementation class siparisEkle
 */
@WebServlet("/siparisEkle")
public class siparisEkle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public siparisEkle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String mKodu=request.getParameter("mKodu");
		int masaKodu=Integer.valueOf(mKodu);
		
		String sayac=request.getParameter("toplam");
		int toplam=Integer.valueOf(sayac);
		
		SimpleDateFormat bicim=new SimpleDateFormat("dd/M/yyyy");
		Date tarih=new Date();
		
		
		
		
		String now=bicim.format(tarih).toString();
		Siparisler siparis=new Siparisler(now,masaKodu,toplam);
		SiparisDAO siparisDao=new SiparisDAO();
		siparisDao.Add(siparis);
		
		response.sendRedirect("SiparisAl.jsp?mKodu="+mKodu+"&sil=sill");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
