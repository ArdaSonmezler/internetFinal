<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.IP.Classes.Urunler,java.util.*,com.IP.DAO.UrunlerDAO"%>
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
		
		UrunlerDAO urunDao=new UrunlerDAO();
		List<Urunler> urunler=urunDao.readingData();
		
		String mKodu=request.getParameter("mKodu");
		
	%>

	<%
				String ymk=request.getParameter("ymk");
				String ick=request.getParameter("ick");
				if(ymk!=null && ick!=null && ymk!="0" && ick!="0"){
					
					int ymkEkle=Integer.valueOf(ymk);
					int ickEkle=Integer.valueOf(ick);
					List<Urunler> siparisler= (List<Urunler>)session.getAttribute(mKodu);
					if(siparisler==null){
							
						siparisler=new ArrayList<>();
							
						}
						
						Urunler siparisUrunYmk=new Urunler(ymkEkle);
						siparisler.add(siparisUrunYmk);
						
						Urunler siparisUrunIck=new Urunler(ickEkle);
 						siparisler.add(siparisUrunIck);
 						session.setAttribute(mKodu,siparisler);
					
				}
				
			
				
					
					
				
				
				
				
		
		%>
		
		<%
				String sil=request.getParameter("sil");
				if(sil!=null){
					
					
					List<Urunler> siparisler= (List<Urunler>)session.getAttribute(mKodu);
					if(siparisler!=null){
						
						siparisler=null;
						
						session.setAttribute(mKodu, siparisler);
					}
					
				}
				
		%>
		
		<%
				String urk=request.getParameter("kod");
				if(urk!=null){
					
					int siparisUrunSil=Integer.valueOf(urk);
					List<Urunler> siparisler= (List<Urunler>)session.getAttribute(mKodu);
					if(siparisler!=null){
						
						for(Urunler u:siparisler){
							
							if(u.getUrunKodu()==siparisUrunSil){
								
								siparisler.remove(u);
								break;
							}
						}
						
						session.setAttribute(mKodu, siparisler);
					}
				}
				
					
				List<Urunler> siparisler= (List<Urunler>)session.getAttribute(mKodu);
				
				
				
				
		
		%>
		

	<div class="container-fluid">
			<div class="row">
				<div class="container-fluid text-center mb-3"><br>
					<h1>Menuler</h1>
					<a href="index.jsp"><button > AnaSayfa </button></a>
				</div>	
					
			</div>

			<div class="row Menu">
			<div class=col-1> </div>
			<div class="col-5 text-center">
			
				<table class="table table-striped">
  				<thead>
   					 <tr>
      
    				  <th scope="col">urunler</th>
				      <th scope="col">icindekiler</th>
				      <th scope="col">fiyat</th>
				    </tr>
				 </thead>
				 <tbody>
   					   <%
								for(Urunler urun:urunler){
									
									if(urun.getUrunTur()==1){
						%>				
										
										<tr>
										<td><%=urun.getUrunAd()%></td>
										<td><%=urun.getUrunDetay()%></td>
										<td><%=urun.getUrunFiyat()%> TL</td>
										</tr>
										
						<%			}
								}
						
						%>
    
 				 </tbody>
			</table>
			</div>
				<div class="col-5 text-center">
					<table class="table table-striped">
  				<thead>
   					 <tr>
      
    				  <th scope="col">urunler</th>
				      <th scope="col">icindekiler</th>
				      <th scope="col">fiyat</th>
				    </tr>
				 </thead>
				 <tbody>
   					   <%
								for(Urunler urun:urunler){
									
									if(urun.getUrunTur()==2){
						%>				
										
										<tr>
										<td><%=urun.getUrunAd()%></td>
										<td><%=urun.getUrunDetay()%></td>
										<td><%=urun.getUrunFiyat()%> TL</td>
										</tr>
										
						<%			}
								}
						
						%>
    
 				 </tbody>
			</table>
			</div>
		</div>

		<div class="row">
				<div class="container-fluid text-center"><br>
					<h1>Siparis Al</h1>
				</div>			
			</div>

			<div class="row">
				<div class="container-fluid text-center">
					<table class="mx-auto w-auto" style=" border-spacing:21px;border-collapse: separate;">
						<form action="SiparisAl.jsp"> 
						<tr>
							<td>
						<select id="sprsYemek" name="ymk" style="width: 150px;">
									  
									 <%
										for(Urunler urun:urunler){
									
											if(urun.getUrunTur()==1){
										%>				
										
										<option value="<%=urun.getUrunKodu() %>" selected><%=urun.getUrunAd() %></option>
										
								<%		}
								}
						
						%>
							<option value="0" selected>Yiyecekler</option>
						</select> 
						</td>
						<td>
							<select id="sprsYemek" name="ick" style="width: 150px;">
									  
									 <%
										for(Urunler urun:urunler){
									
											if(urun.getUrunTur()==2){
										%>				
										
										<option value="<%=urun.getUrunKodu() %>" selected><%=urun.getUrunAd() %></option>
										
								<%		}
								}
						
								%>
							<option value="0" selected>icecekler</option>
						</select> 
						</td>
						<td>
							
							<button type="submit" value="<%=mKodu %>" name="mKodu">Ekle </button>
						</td>
						
						</tr>
						</table>
						</form>
						<%int sayac=0; %>
						
							<td><label class="pl-3"><h3>Siparis Listesi </h3> </label></td>
							<div class="row"> 
								
								<div class="col-2"></div>
								<div class="col-8">
								
									<table class="table table-striped">
  									<thead>
   									 <tr>
				      
				    				  <th >urunler</th>
								      <th >icindekiler</th>
								      <th >fiyat</th>
								    </tr>
								 </thead>
								 <tbody>
				   					   <%
												if(siparisler!=null){
													
													for(Urunler urun:urunler){
														
														for(Urunler urun2:siparisler){
															
															if(urun.getUrunKodu()==urun2.getUrunKodu()){
																
																
																	%>				
																					
																					<tr>
																					<td><%=urun.getUrunAd()%></td>
																					<td><%=urun.getUrunDetay()%></td>
																					<td><%=urun.getUrunFiyat()%> TL</td>
																					<td><a href="SiparisAl.jsp?islem=sil&kod=<%=urun.getUrunKodu() %>&mKodu=<%=mKodu%>"><button >Sil </button></a></td>
																					</tr>
																					
																					
																	<%	
																	sayac=sayac+urun.getUrunFiyat();
															}
														}
													}
												}
										
										%>
    
 							 </tbody>
						</table>
					</div>
							
				</div>
						
						<tr>
						<td>Odenecek Tutar :</td>
						<td><label><%=sayac %> TL</label></td>
						</tr>
					

					<a href="siparisEkle?mKodu=<%=mKodu%>&toplam=<%=sayac%>"><button>Siparis onayla</button><br></a> <br>
					<a href="SiparisAl.jsp?mKodu=<%=mKodu%>&sil=sill"><button>Siparisi iptal et</button></a>
				</div>	
			</div>
	</div>
</body>
</html>