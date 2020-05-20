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
			<div class="container-fluid text-center">
				<h1>Garson Arayüzü</h1>
			</div>			
		</div>

		<div class="row">
			<div class="col-12 text-center">
				<div class="container-fluid">
				<form action="#" method="POST"> <!--Form Başlangıcı // Action Bilgisi girilecek-->
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;"><!--Tablo Başlangıcı //-->
						<tr>
							<td>Garson :</td>
							<td>
								<select id="garsonSec" name="gSec" style="width: 150px;">
									  <option value="124512">Garson1</option>
									  <option value="212451">Garson2</option>
									  <option value="321245">Garson3</option>
									  <option value="432124">Garson4</option>
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
							<td>Hizmet Verdiği Masalar :</td>
							<td>
								<select id="hzmtMasa1" name="hzmtms1" style="width: 150px;">
									  <option value="0" selected>Seçiniz</option>
									  <option value="1">Masa1</option>
									  <option value="2">Masa2</option>
									  <option value="3">Masa3</option>
									  <option value="4">Masa4</option>
									  <option value="5">Masa5</option>
									  <option value="6">Masa6</option>
									  <option value="7">Masa7</option>
									  <option value="8">Masa8</option>
									  <option value="9">Masa9</option>
								</select> 
								<select id="hzmtMasa2" name="hzmtms2" style="width: 150px;">
									  <option value="0" selected>Seçiniz</option>	
									  <option value="1">Masa1</option>
									  <option value="2">Masa2</option>
									  <option value="3">Masa3</option>
									  <option value="4">Masa4</option>
									  <option value="5">Masa5</option>
									  <option value="6">Masa6</option>
									  <option value="7">Masa7</option>
									  <option value="8">Masa8</option>
									  <option value="9">Masa9</option>
								</select>
							</td>
						</tr>

						<tr>
							
							<td>Garsonun Bugün Aldığı Toplam Hesap : </td>
							<td>
								<label id="grsnGnlk"></label>
							</td>
						</tr>

					</table>

				</form>
				</div>
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