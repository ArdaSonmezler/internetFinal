package com.IP.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.IP.Classes.GARSON;

public class DAO {
	String conurl = "jdbc:sqlserver://localhost:1433;databaseName=Restoran_Otomasyon;integratedSecurity=true;";

	public int garsonEkle(GARSON grsn) {
		Connection con;
		int value=99;
		try {
			con = DriverManager.getConnection(conurl);
			String insert = "INSERT INTO GARSON VALUES(?,?,?)";
			PreparedStatement pst = con.prepareStatement(insert);
			pst.setString(1, grsn.getAdsoyad());
			pst.setLong(3, grsn.getTcno());
			pst.setString(2, grsn.getDtarihi());
			pst.execute();
			value=1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return value;	
	}
	public int garsonCikart(GARSON grsn) {
		Connection con;
		int value = 99;
		try {
			con = DriverManager.getConnection(conurl);
			String delete = "DELETE FROM GARSON WHERE garson_Adi(?)";
			PreparedStatement pst = con.prepareStatement(delete);
			pst.setString(1, grsn.getAdsoyad());
			pst.execute();
			value=1;
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return value;
		
	}
	
}

