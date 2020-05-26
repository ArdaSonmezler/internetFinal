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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
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
	<div class="row"> <!--Karşılama -->
		<div class="container-fluid text-center">
			<h1>Hosgeldiniz</h1>
		</div>
	</div>

	<div class="row masalar"><!-- Masalar -->
		<div class="col-2"> </div>
		<div class="col-10">
		
			<%
				
				for(Masa masa:masalar){
			 %>
					
					
					<div  class="text-center float-left as"  style="margin-right:230px;margin-bottom:100px;" > <a href="SiparisAl.jsp?mKodu=<%=masa.getMasaKodu() %>"><button id="masa1" class ="mButon"><%=masa.getMasaAdi() %></button></a> </div>
					
			<%	}
			
			%>
		
			
			
			
			
			
			
		</div>
		<div class="col-2"> </div>
		
	</div>
		

	<div class="row altmenu"> <!--Alt Menü -->
		<div class="col-4 text-center"><a href ="gIslem.jsp" style="color=black;"><button class="sButon">Garson islemleri</button></a></div>
		<div class="col-4 text-center"><a href ="masaIslem.jsp"><button class="sButon">Masa islemleri</button></a></div>
		<div class="col-4 text-center"><a href ="gArayuz.jsp"><button class="sButon">Garson Arayuz</button></a></div>
	</div>
	<div class="row altmenu"> <!--Alt Menü -->
		<div class="col-6 text-center"><a href ="gunlukRapor.jsp"><button class="sButon">Gunluk Rapor</button></a></div>
		
		<div class="col-6 text-center"><button class="sButon">Cikis</button></div>
	</div>
</div>
<script>function SiparisAl(masaNo){
		width = window.screen.width * 0.5;
		height = window.screen.height * 0.5;
		url="SiparisAl.jsp?masaNo="+masaNo;
		mywindow = window.open(url, "Sipariş Al", "resizable=yes","location=0 , status=1 , scrollbars=1 , "+
				"menubar=0 , toolbar=no");
		mywindow.moveTo(width * 0.5, height * 0.5);
		mywindow.resizeTo(width, height);
		mywindow.focus();
	}
	</script>
</body>
</html>