package com.IP.DAO;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.IP.Classes.*;



public class MasaDAO extends databaseConnection{

	
	public List<Masa> readingData(){
	   	 
	 	   try {
	 		   String sorgu="SELECT * FROM masalar";
	 		   Class.forName("com.mysql.jdbc.Driver");
	 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
	            ps=con.prepareStatement(sorgu);
	            ResultSet rs=ps.executeQuery();
	            List<Masa> liste=new ArrayList<>();
	            while(rs.next())
	            {
	            	Masa masa=new Masa(rs.getInt("masaKodu"),rs.getString("masaAdi"),rs.getInt("garsonKodu"));
	            		 
	            	liste.add(masa);
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
	
	public void Add(Masa masa){
	   	  
		
	 	   try {
	 		   String sorgu="INSERT INTO masalar(masaAdi,garsonKodu) VALUES(?,?)";
	 		   Class.forName("com.mysql.jdbc.Driver");
	 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
	            ps=con.prepareStatement(sorgu);
	            
	            
	            
	            ps.setString(1, masa.getMasaAdi()); 
	            ps.setInt(2, 0); 
	          
	          
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
			
			public void Remove(Masa masa){
			 	  
				
				try {
					String sorgu="DELETE FROM masalar WHERE masaKodu=?";
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
					ps=con.prepareStatement(sorgu);	    
		            ps.setInt(1,masa.getMasaKodu());
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
			
			public void Update(Masa masa){
				  
				
				try {
					String sorgu="UPDATE masalar SET garsonKodu=? WHERE masaKodu=?";
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/restorant","root","");
					ps=con.prepareStatement(sorgu);	    
			        
					
		            ps.setInt(1, masa.getGarsonKodu());
		            ps.setInt(2, masa.getMasaKodu());
		            
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
