package com.IP.DAO;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.IP.Classes.*;

public class UrunlerDAO extends databaseConnection {
	
	
	
	public List<Urunler> readingData(){
	   	 
	 	   try {
	 		   String sorgu="SELECT * FROM urunler";
	 		   Class.forName("com.mysql.jdbc.Driver");
	 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
	            ps=con.prepareStatement(sorgu);
	            
	            ResultSet rs=ps.executeQuery();
	            List<Urunler> liste=new ArrayList<>();
	            while(rs.next())
	            {
	            	Urunler urun=new Urunler(rs.getInt("urunKodu"),rs.getString("urunAd"),rs.getString("urunDetay"),
	            			rs.getInt("urunFiyat"),rs.getInt("urunTur"));
	            		
	            	liste.add(urun);
	            }
	            return liste;
	         
	        } 
	        catch (ClassNotFoundException | SQLException exception) {
	            System.out.println("Bir hata meydana geldi:"+exception);
	            return null;
	        }
	 	   finally{ 
	            try {
	                if(con!=null){ 
	                    con.close();
	                }
	                if(ps!=null){ 
	                    ps.close();
	                }
	            } catch (SQLException sqlException) {
	                System.out.println("Bir hata meydana geldi:"+sqlException);
	            }
	        }
	 	   
	     }
}
