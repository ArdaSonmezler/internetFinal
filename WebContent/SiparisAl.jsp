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

</head>
<body>
	<div class="container-fluid">
			<div class="row">
				<div class="container-fluid text-center"><br>
					<h1>Menüler</h1>
				</div>			
			</div>

			<div class="row Menu">
			<div class="col-6 text-center">
				<form action="gEkle.jsp" method="POST">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<tr>
							<td>Ürünler</td>
							<td>İçindekiler</td>
							<td>Fiyat</td>
						</tr>
						<tr>
							<td>Pizza</td>
							<td>Mozarella Peyniri,Sosis,Mısır<br>Biber</td>
							<td>30TL</td>
						</tr>
						<tr>
							<td>Hamburger</td>
							<td>Hamburger Köftesi,Marul,Soğan,<br>Cheddar Peyniri</td>
							<td>35TL</td>
						</tr>
						<tr>
							<td>Karışık Izgara</td>
							<td>Kanat Izgara,Tavuk Şiş,<br>Kuzu Şiş</td>
							<td>45TL</td>
						</tr>
						<tr>
							<td>Waffle</td>
							<td>Çilek,Kivi,Oreo,<br>Çikolata Kreması</td>
							<td>20TL</td>
						</tr>
					</table>
				</form>
			</div>
				<div class="col-6 text-center">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
							<tr>
							<td>Ürünler</td>
							<td>İçindekiler</td>
							<td>Fiyat</td>
						</tr>
						<tr>
							<td>Ayran</td>
							<td>Nane Yaprağı, Soda<br>(İsteğe Bağlı)</td>
							<td>7TL</td>
						</tr>
						<tr>
							<td>Limonata</td>
							<td>Limon,Nane Yaprağı,<br>Buz</td>
							<td>10TL</td>
						</tr>
						<tr>
							<td>Çilekli Limonata</td>
							<td>Çilek,Limon,Nane Yaprağı,<br>Buz</td>
							<td>12TL</td>
						</tr>
						<tr>
							<td>Ballı Süt</td>
							<td>Bal,Tarçın,Süt</td>
							<td>13TL</td>
						</tr>
					</table>
			</div>
		</div>

		<div class="row">
				<div class="container-fluid text-center"><br>
					<h1>Sipariş Al</h1>
				</div>			
			</div>

			<div class="row">
				<div class="container-fluid text-center">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						
						<tr>
							<td>
						<select id="sprsYemek" name="ymk" style="width: 150px;">
									  <option value="0" selected>Yiyecekler</option>
									  <option value="1">Pizza</option>
									  <option value="2">Hamburger</option>
									  <option value="3">Karşık Izgara</option>
									  <option value="4">Waffle</option>
						</select> 
						</td>
						<td>
							<select id="sprspIcecek" name="icecek" style="width: 150px;">
									  <option value="0" selected>İçecekler</option>
									  <option value="1">Ayran</option>
									  <option value="2">Limonata</option>
									  <option value="3">Çilekli Limonata</option>
									  <option value="4">Ballı Süt</option>
						</select> 
						</td>
						</tr>
						<tr>
							<td><label>Siparişler : </label></td>
							<td><label>Lorem ipsum dolor sit amet.</label></td>
						</tr>
						<tr>
						<td>Ödenecek Tutar :</td>
						<td><label>2552TL</label></td>
						</tr>
					</table>

					<button>Sipariş Onayla</button><br><br>
					<button>Siparişi İptal Et</button>
				</div>	
			</div>
	</div>
</body>
</html>