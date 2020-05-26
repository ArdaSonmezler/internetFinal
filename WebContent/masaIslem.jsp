<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.IP.Classes.*,java.util.*,com.IP.DAO.*"%>
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
			MasaDAO masaDao=new MasaDAO();
			List<Masa> masalar=masaDao.readingData();
	%>

	<div class="container-fluid">
		<div class="row">
			<div class="container-fluid text-center"><br>
				<h1>Masa Ekle/Sil</h1>
				<a href="index.jsp"><button >AnaSayfa</button></a>
			</div>			
		</div>

		<div class="row gIslem">
			<div class="col-6 text-center">
				<form action="masaEkle" method="POST">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<tr>
							<td>Masa Adi : </td><td><input type="text" class="form-control" name="masaAdi" required></td>
						</tr>
						
						<tr>
							<td><input type="submit" value="Masa Ekle" name="btnEkle"></td>
						</tr>
					</table>
				</form>
			</div>
				<div class="col-6 text-center">
				<form action="masaSil" method="POST">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<tr>
							<td>Cikartilacak Masa Sec : </td><td><select id="grsnsec" name="masaKodu" style="width: 150px;">
									  
									  <%
									  		for(Masa masa:masalar){
									  			
									  	%>
									  			<option value="<%=masa.getMasaKodu() %>"><%=masa.getMasaAdi() %></option>
									  	
									  		<%}
									  %>
									  
								</select></td>
						</tr>
						<tr>
							<td>Masa ID:     <label id="gID"></label> </td>
						</tr>
						<tr>
							<td><input type="submit" value="Masa Sil" name="btnCikart"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		
		<div class="row">
				
			<div class="col-2"></div>
			<div class="col-8">
			
				<table class="table table-striped">
			  <thead>
			    <tr>
			      <th scope="col">Masa Kodu</th>
			      <th scope="col">Masa Adi</th>
			      
			    </tr>
			  </thead>
			  <tbody>
			    
			    	<%
			    	
			    			for(Masa masa:masalar){
			    				
			    				
			    	 %>
			    				
			    				<tr>
							      <th ><%=masa.getMasaKodu() %></th>
							      <td><%=masa.getMasaAdi() %></td>
							      
							    </tr>
			    				
			    				
			    	<%		}
			    	
			    	%>
			   
			  </tbody>
			</table>
			
			</div>
		
		</div>
		
		
		

	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#grsnsec").change(function(){
				var gid = $(this).val(); //#garsonSec de secilen garsonun ID'sini alıyoruz

				document.getElementById('gID').innerHTML= gid;

				$.ajax({
					type:"POST",
					url:"Servlet", //Yönlendirilecek URL
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