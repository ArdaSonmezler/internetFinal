<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Arda Sönmezler | Developer</title>
	<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrap.bundle.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	
	<script>function SiparisAl(masaNo){
		width = window.screen.width * 0.5;
		height = window.screen.height * 0.5;
		url="http://localhost:8080/IPFinal/SiparisAl.jsp?masaNo="+masaNo;
		mywindow = window.open(url, "Sipariş Al", "resizable=yes","location=0 , status=1 , scrollbars=1 , "+
				"menubar=0 , toolbar=no");
		mywindow.moveTo(width * 0.5, height * 0.5);
		mywindow.resizeTo(width, height);
		mywindow.focus();
	}
	</script>
</head>
<body>
	<div class="container-fluid">
	<div class="row"> <!--Karşılama -->
		<div class="container-fluid text-center">
			<h1>Hoşgeldiniz</h1>
		</div>
	</div>

	<div class="row masalar"><!-- Masalar -->
		<div class="col-4 text-center"><button id="masa1" class ="mButon" onclick="SiparisAl('1')">Masa1</button></div>
		<div class="col-4 text-center"><button id="masa2" class ="mButon">Masa2</button></div>
		<div class="col-4 text-center"><button id="masa3" class ="mButon">Masa3</button></div>
	</div>
		<div class="row masalar">
		<div class="col-4 text-center"><button id="Masa4" class ="mButon">Masa4</button></div>
		<div class="col-4 text-center"><button id="Masa5" class ="mButon">Masa5</button></div>
		<div class="col-4 text-center"><button id="Masa6" class ="mButon">Masa6</button></div>
	</div>
	<div class="row masalar">
		<div class="col-4 text-center"><button id="Masa7" class ="mButon">Masa7</button></div>
		<div class="col-4 text-center"><button id="Masa8" class ="mButon">Masa8</button></div>
		<div class="col-4 text-center"><button id="Masa9" class ="mButon">Masa9</button></div>
	</div>

	<div class="row altmenu"> <!--Alt Menü -->
		<div class="col-4 text-center"><a href ="gIslem.jsp" style="color="black;><button class="sButon">Yeni Garson Ekle</button></a></div>
		<div class="col-4 text-center"><a href ="mEkle.jsp"><button class="sButon">Yeni Masa Ekle</button></a></div>
		<div class="col-4 text-center"><a href ="gArayuz.jsp"><button class="sButon">Garson Arayüz</button></a></div>
	</div>
	<div class="row altmenu"> <!--Alt Menü -->
		<div class="col-6 text-center"><a href ="zRapor.jsp"><button class="sButon">Günlük Rapor</button></a></div>
		<div class="col-6 text-center"><button class="sButon">Çıkış</button></div>
	</div>
</div>
</body>
</html>