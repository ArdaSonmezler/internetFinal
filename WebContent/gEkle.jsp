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
				<h1>Garson Ekle/Çıkart</h1>
			</div>			
		</div>

		<div class="row gIslem">
			<div class="col-6 text-center">
				<form action="gEkle.jsp" method="POST">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<tr>
							<td>Garsonun Adı Soyadı : </td><td><input type="text" class="form-control" name="gAdSoyad" required></td>
						</tr>
						<tr>
							<td>Garson TC Kimlik : </td><td><input type="text" class="form-control" required name="gTC"></td>
						</tr>
						<tr>
							<td>Garsonun Doğum Tarihi : </td><td><input type="date" class="form-control" name="gdtarihi" required></td>
						</tr>
						<tr>
							<td><input type="submit" value="Garson Ekle" name="btnEkle"></td>
						</tr>
					</table>
				</form>
			</div>
				<div class="col-6 text-center">
				<form action="gCikart.jsp" method="POST">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<tr>
							<td>Çıkartılacak Garsonu Seç : </td><td><select id="grsnsec" name="garsonSec" style="width: 150px;">
									  <option value="124512">Garson1</option>
									  <option value="212451">Garson2</option>
									  <option value="321245">Garson3</option>
									  <option value="432124">Garson4</option>
								</select></td>
						</tr>
						<tr>
							<td>Garson ID: </td><td><label id="gID"></label></td>
						</tr>
						<tr>
							<td><input type="submit" value="Garson Çıkart" name="btnCikart"></td>
						</tr>
					</table>
				</form>
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