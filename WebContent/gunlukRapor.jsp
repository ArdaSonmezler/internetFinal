<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.IP.Classes.*,com.IP.DAO.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Arda Sonmezler | Developer</title>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body>


		<%
			
				GarsonlarDAO garsonDao=new GarsonlarDAO();
				List<Garsonlar> garsonlar=garsonDao.readingData();
				
				MasaDAO masaDao=new MasaDAO();
				List<Masa> masalar=masaDao.readingData();
				
				SiparisDAO siparisDao=new SiparisDAO();
				List<Siparisler> siparisler=siparisDao.readingData();
				
				
				
			%>
		<%
			int toplamFiyat=0;
		
			for(Siparisler siparis:siparisler){
				
				toplamFiyat=toplamFiyat+siparis.getToplam();
			}
		%>
		
		<div class="row mt-5">
				
				<div class="col-4"></div>
				<div class="col-4">
						
						<h3>Gunluk Satis Raporu</h3>
						<a href="index.jsp"><button >AnaSayfa</button></a>
						<p>
						  <a  data-toggle="collapse" href="#collapseExample"  aria-expanded="false" aria-controls="collapseExample">
						    <button class="mt-3">Gunluk Yapilan Satis Toplami</button>
						  </a>
						  
						</p>
						<div class="collapse" id="collapseExample">
						  <div class="card card-body">
						    <p><%=siparisler.get(0).getSiparisTarihi() %> tarihinde toplam <%=siparisler.size() %> adet siparis olusturulmustur ve</p>
						    <p>olusturulan siparislerin toplam tutari =  <%=toplamFiyat %> TL'dir</p>
						  </div>
						</div>
				</div>
				
		</div>
		
		
			
		
		<div class="row mt-5">
			
			<div class="col-2"></div>
			<div class="col-8">
			
			
				<table class="table table-striped">
				  <thead>
				    <tr>
				      <th scope="col">Siparis Kodu</th>
				      <th scope="col">Siparis tarihi</th>
				      <th scope="col">Siparis Toplami</th>
				      <th scope="col">Masa Adi</th>
				      <th scope="col">Garson Adi</th>
				      
				    </tr>
				  </thead>
				  <tbody>
				    
				    <%
				    
				    	for(Siparisler siparis:siparisler){
				    		
				    		
				     %>
				    		<tr>
				    		<th><%=siparis.getSiparisKodu() %></th>
				    		<th><%=siparis.getSiparisTarihi() %></th>
				    		<th><%=siparis.getToplam() %> TL</th>
				    			<%
				    			for(Masa masa:masalar){
				    				
				    				
				    				if(masa.getMasaKodu()==siparis.getMasaKodu()){
				    					
				    				 %>
				    					<th><%=masa.getMasaAdi() %></th>
				    					
				    				<%
				    				for(Garsonlar garson:garsonlar){
					    				
					    				if(garson.getGarsonKodu() ==masa.getGarsonKodu()){
					    					
						    				 %>
						    					<th><%=garson.getGarsonAd() %></th>
						    					
						    				<%}
					    				
					    			}
				    				
				    				}
				    				
				    				
				    			}
				    			
				    			
				    				
				    			
				    			
				    			%>
				    		
				    		
				    		
				    		
				    		
				    		
				    		
				    		</tr>
				    		
				    		
				    	
				     <% 	}
				    
				    %>
				    
				  </tbody>
				</table>
			
			
			</div>
		
		</div>
		
</body>
</html>