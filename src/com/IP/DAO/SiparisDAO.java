package com.IP.DAO;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.IP.Classes.*;



public class SiparisDAO extends databaseConnection{

	
	public List<Siparisler> readingData(){
	   	 
	 	   try {
	 		   String sorgu="SELECT * FROM siparisler";
	 		   Class.forName("com.mysql.jdbc.Driver");
	 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
	            ps=con.prepareStatement(sorgu);
	            
	            ResultSet rs=ps.executeQuery();
	            List<Siparisler> liste=new ArrayList<>();
	            while(rs.next())
	            {
	            	Siparisler siparis=new Siparisler(rs.getInt("siparisKodu"),rs.getString("siparisTarihi"),rs.getInt("masaKodu"),rs.getInt("toplam"));
	            		
	            	liste.add(siparis);
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
		
		
		public void Add(Siparisler siparis){
		   	  
			
		 	   try {
		 		   String sorgu="INSERT INTO siparisler(siparisTarihi,masaKodu,toplam) VALUES(?,?,?)";
		 		   Class.forName("com.mysql.jdbc.Driver");
		 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
		            ps=con.prepareStatement(sorgu);
		            
		            
		            
		            ps.setString(1, siparis.getSiparisTarihi());
		            ps.setInt(2, siparis.getMasaKodu());
		            ps.setInt(3, siparis.getToplam());
		          
		            ps.executeUpdate();
		 	   }
		           
		            catch(ClassNotFoundException | SQLException exception)
		            {
		                System.out.println(exception);
		                setErrorMessage(exception.toString());
		            }
		            finally 
		            {
		                try {
		                    if(con!=null){
		                        con.close();
		                    }
		                    if(ps!=null){
		                        ps.close();
		                    }
		                }
		                catch(SQLException sqlException)
		                {
		                    System.out.println(sqlException);
		                }
		            }
		            
		        }


				private void setErrorMessage(String string) {
						// TODO Auto-generated method stub
			
				}
}
