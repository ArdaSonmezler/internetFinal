<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<div class="container-fluid">
		<div class="row">
			<div class="container-fluid text-center"><br>
				<h1>Masa Ekle/Sil</h1>
			</div>			
		</div>

		<div class="row gIslem">
			<div class="col-6 text-center">
				<form action="Servlet" method="POST">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<tr>
							<td>Masa Adi : </td><td><input type="text" class="form-control" name="gAdSoyad" required></td>
						</tr>
						
							<td><input type="submit" value="Masa Ekle" name="btnEkle"></td>
						</tr>
					</table>
				</form>
			</div>
				<div class="col-6 text-center">
				<form action="gCikart.jsp" method="POST">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<tr>
							<td>Cikartilacak Masa Sec : </td><td><select id="grsnsec" name="masaSec" style="width: 150px;">
									  <option value="124512">Garson1</option>
									  <option value="212451">Garson2</option>
									  <option value="321245">Garson3</option>
									  <option value="432124">Garson4</option>
								</select></td>
						</tr>
					
						<tr>
							<td><input type="submit" value="Masa Sil" name="btnCikart"></td>
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