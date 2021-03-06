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
			GarsonlarDAO garsonDao=new GarsonlarDAO();
			List<Garsonlar> Garsonlar=garsonDao.readingData();
	%>

	<div class="container-fluid">
		<div class="row">
			<div class="container-fluid text-center"><br>
				<h1>Garson Ekle/Sil</h1>
				<a href="index.jsp"><button >AnaSayfa</button></a>
			</div>			
		</div>

		<div class="row gIslem">
			<div class="col-6 text-center">
				<form action="garsonEkle" method="POST">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<tr>
							<td>Garsonun Adi Soyadi : </td><td><input type="text" class="form-control" name="garsonAd" required></td>
						</tr>
						<tr>
							<td>Garson TC Kimlik : </td><td><input type="text" class="form-control" required name="garsonTc"></td>
						</tr>
						<tr>
							<td>Garsonun Dogum Tarihi : </td><td><input type="date" class="form-control" name="garsonDogumTarihi" required></td>
						</tr>
						<tr>
							<td><input type="submit" value="Garson Ekle" name="btnEkle"></td>
						</tr>
					</table>
				</form>
			</div>
				<div class="col-6 text-center">
				<form action="garsonSil" method="POST">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<tr>
							<td>Cikartilacak Garsonu Sec : </td><td><select id="grsnsec" name="garsonKodu" style="width: 150px;">
									  
									  <%
									  		for(Garsonlar garson:Garsonlar){
									  			
									  	%>
									  			<option value="<%=garson.getGarsonKodu() %>"><%=garson.getGarsonAd() %></option>
									  	
									  		<%}
									  %>
									  
								</select></td>
						</tr>
						<tr>
							<td>Garson ID:     <label id="gID"></label> </td>
						</tr>
						<tr>
							<td><input type="submit" value="Garson Sil" name="btnCikart"></td>
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
			      <th scope="col">Garson Kodu</th>
			      <th scope="col">Garson Adi</th>
			      <th scope="col">Garson Tc Kimlik</th>
			      <th scope="col">Garson Dogum Tarihi</th>
			    </tr>
			  </thead>
			  <tbody>
			    
			    	<%
			    	
			    			for(Garsonlar garson:Garsonlar){
			    				
			    				
			    	 %>
			    				
			    				<tr>
							      <th ><%=garson.getGarsonKodu() %></th>
							      <td><%=garson.getGarsonAd() %></td>
							      <td><%=garson.getGarsonTc() %></td>
							      <td><%=garson.getGarsonDogumTarihi() %></td>
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