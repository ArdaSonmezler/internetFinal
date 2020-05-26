package com.IP.Classes;

public class Masa {

	private int masaKodu;
	private String masaAdi;
	private int garsonKodu;
	
	
	
	
	public Masa(int masaKodu, int garsonKodu) {
		
		this.masaKodu = masaKodu;
		this.garsonKodu = garsonKodu;
	}



	public Masa(int masaKodu, String masaAdi, int garsonKodu) {
		
		this.masaKodu = masaKodu;
		this.masaAdi = masaAdi;
		this.garsonKodu = garsonKodu;
	}
	
	
	
	public Masa(int masaKodu) {
		
		this.masaKodu = masaKodu;
	}



	public Masa(String masaAdi) {
		super();
		this.masaAdi = masaAdi;
	}



	public int getMasaKodu() {
		return masaKodu;
	}
	public void setMasaKodu(int masaKodu) {
		this.masaKodu = masaKodu;
	}
	public String getMasaAdi() {
		return masaAdi;
	}
	public void setMasaAdi(String masaAdi) {
		this.masaAdi = masaAdi;
	}
	public int getGarsonKodu() {
		return garsonKodu;
	}
	public void setGarsonKodu(int garsonKodu) {
		this.garsonKodu = garsonKodu;
	}
	
	
	
	
}
