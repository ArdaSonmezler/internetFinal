package com.IP.DAO;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.IP.Classes.*;





public class GarsonlarDAO extends databaseConnection{

	public List<Garsonlar> readingData(){
	   	 
	 	   try {
	 		   String sorgu="SELECT * FROM garsonlar";
	 		   Class.forName("com.mysql.jdbc.Driver");
	 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
	            ps=con.prepareStatement(sorgu);
	            ResultSet rs=ps.executeQuery();
	            List<Garsonlar> liste=new ArrayList<>();
	            while(rs.next())
	            {
	            	Garsonlar garson=new Garsonlar(rs.getInt("garsonKodu"),rs.getString("garsonAd"),rs.getString("garsonTc"),
	            							rs.getString("garsonDogumTarihi"));
	            		
	            	liste.add(garson);
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
	
	public void Add(Garsonlar garson){
	   	  
		
	 	   try {
	 		   String sorgu="INSERT INTO garsonlar(garsonAd,garsonTc,garsonDogumTarihi) VALUES(?,?,?)";
	 		   Class.forName("com.mysql.jdbc.Driver");
	 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
	            ps=con.prepareStatement(sorgu);
	            
	            
	            
	            ps.setString(1, garson.getGarsonAd());
	            ps.setString(2, garson.getGarsonTc());
	            ps.setString(3, garson.getGarsonDogumTarihi());
	          
	          
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
			
			public void Remove(Garsonlar garson){
			 	  
				
				try {
					String sorgu="DELETE FROM garsonlar WHERE garsonKodu=?";
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
					ps=con.prepareStatement(sorgu);	    
		            ps.setInt(1,garson.getGarsonKodu());
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
			
	
}
