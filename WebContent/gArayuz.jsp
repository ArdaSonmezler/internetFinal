<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.IP.Classes.*,com.IP.DAO.*"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Arda Sonmezler | Developer</title>
	<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrap.bundle.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

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
	<div class="container-fluid">
		<div class="row">
			<div class="container-fluid text-center">
				<h1>Garson Arayuzu</h1>
				<a href="index.jsp"><button >AnaSayfa</button></a>
			</div>
					
		</div>

		<div class="row">
			<div class="col-12 text-center">
				<div class="container-fluid">
				<form action="masaGarsonEkle" method="POST"> <!--Form Başlangıcı // Action Bilgisi girilecek-->
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;"><!--Tablo Başlangıcı //-->
						<tr>
							<td>Garson :</td>
							<td>
								<select id="garsonSec" name="garson" style="width: 150px;">
									  
									 <%
									 		
									 		for(Garsonlar garson:garsonlar){
									 			
									 	 %>
									 			
									 			<option value=<%=garson.getGarsonKodu() %>><%=garson.getGarsonAd() %></option>
									 		
									 	 <%}
									 
									 %>
								</select>

							</td>
						</tr>
						<tr>
							<td >Garson ID :</td>
							<td>
								<label id="grsnID2"></label>
							</td>
						</tr>
						<tr>
							<td>Hizmet Verdigi Masalar :</td>
							<td>
								<select id="hzmtMasa1" name="masa1" style="width: 150px;">
									  <option value="0" selected>Seciniz</option>
									 
									 <%
									 
									 		for(Masa masa:masalar){
									 			
									  %>
									 			
									 			<option value=<%=masa.getMasaKodu() %>><%=masa.getMasaAdi() %></option>
									 		
									 <%		}
									 
									 %>
									 
									  
								</select> 
								<select id="hzmtMasa2" name="masa2" style="width: 150px;">
									  <option value="0" selected>Seciniz</option>	
									  <%
									 
									 		for(Masa masa:masalar){
									 			
									  %>
									 			
									 			<option value=<%=masa.getMasaKodu() %>><%=masa.getMasaAdi() %></option>
									 		
									 <%		}
									 
									 %>
								</select>
							</td>
							
						</tr>

							
					</table>
								<div>
									<button type="submit">Ekle</button>
							
							</div>
				</form>
				
				
				</div>
				
				
			</div>
		</div>
			
			<div class="row mt-5">
				
				<div class="col-2"></div>
				<div class="col-8">
							
							<%
								int hesapSayisi=0;
								int hesapTutari=0;
							%>
						
					
							<table class="table table-striped">
							  <thead>
							    <tr>
							      <th scope="col">Masa Adi</th>
							      <th scope="col">Garson Adi</th>
							     
							    </tr>
							  </thead>
							  
							  
							  
							  
							    	<%
							    			
							    		for(Masa masa:masalar){
							    	 %>
							    			
							    		<tr>
						      				<th scope="row"><%=masa.getMasaAdi() %></th>
						      				
						      		<%
						      				
						      		 		for(Garsonlar garson:garsonlar)	{
						      		 			
						      		 			if(masa.getGarsonKodu()==garson.getGarsonKodu()){
						      		 				
						      		 %>			
						      		 				
						      		 				 <td><%=garson.getGarsonAd() %></td>
						      		 				
						      		 				
						      		 <%			}

						      		 		}
						      		
						      		%>
						      		
						   		       </tr>
							    			
							    			
							    	 <%	}
							    	
							    	%>
							    
							</tbody>
							</table>
								
			
						
						
				</div>
			</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#garsonSec").change(function(){
				var gid = $(this).val(); //#garsonSec de secilen garsonun ID'sini alıyoruz

				document.getElementById('grsnID2').innerHTML= gid;

				$.ajax({
					type:"POST",
					url:"", //Yönlendirilecek URL
					data:{"garson":gid},
					success:function(e)
					{
						//alert(gid);
					}

				})


			})

		})

	</script>
</body>
</html>