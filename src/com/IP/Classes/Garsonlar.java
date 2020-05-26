package com.IP.Classes;

public class Garsonlar {

	private int garsonKodu;
	private String garsonAd;
	private String garsonTc;
	private String garsonDogumTarihi;
	
	public Garsonlar(int garsonKodu, String garsonAd, String garsonTc, String garsonDogumTarihi) {
		
		this.garsonKodu = garsonKodu;
		this.garsonAd = garsonAd;
		this.garsonTc = garsonTc;
		this.garsonDogumTarihi = garsonDogumTarihi;
	}
	
	

	public Garsonlar(int garsonKodu) {
		
		this.garsonKodu = garsonKodu;
	}



	public Garsonlar(String garsonAd, String garsonTc, String garsonDogumTarihi) {
		
		this.garsonAd = garsonAd;
		this.garsonTc = garsonTc;
		this.garsonDogumTarihi = garsonDogumTarihi;
	}



	public int getGarsonKodu() {
		return garsonKodu;
	}

	public void setGarsonKodu(int garsonKodu) {
		this.garsonKodu = garsonKodu;
	}

	public String getGarsonAd() {
		return garsonAd;
	}

	public void setGarsonAd(String garsonAd) {
		this.garsonAd = garsonAd;
	}

	public String getGarsonTc() {
		return garsonTc;
	}

	public void setGarsonTc(String garsonTc) {
		this.garsonTc = garsonTc;
	}

	public String getGarsonDogumTarihi() {
		return garsonDogumTarihi;
	}

	public void setGarsonDogumTarihi(String garsonDogumTarihi) {
		this.garsonDogumTarihi = garsonDogumTarihi;
	}
	
	
	
}
