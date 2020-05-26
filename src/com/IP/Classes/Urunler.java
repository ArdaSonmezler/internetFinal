package com.IP.Classes;

public class Urunler {
	
	private int urunKodu;
	private String urunAd;
	private String urunDetay;
	private int urunFiyat;
	private int urunTur;
	
	public Urunler(int urunKodu, String urunAd, String urunDetay, int urunFiyat, int urunTur) {
		
		this.urunKodu = urunKodu;
		this.urunAd = urunAd;
		this.urunDetay = urunDetay;
		this.urunFiyat = urunFiyat;
		this.urunTur = urunTur;
	}
	
	

	public Urunler(int urunKodu) {
		super();
		this.urunKodu = urunKodu;
	}



	public int getUrunKodu() {
		return urunKodu;
	}

	public void setUrunKodu(int urunKodu) {
		this.urunKodu = urunKodu;
	}

	public String getUrunAd() {
		return urunAd;
	}

	public void setUrunAd(String urunAd) {
		this.urunAd = urunAd;
	}

	public String getUrunDetay() {
		return urunDetay;
	}

	public void setUrunDetay(String urunDetay) {
		this.urunDetay = urunDetay;
	}

	public int getUrunFiyat() {
		return urunFiyat;
	}

	public void setUrunFiyat(int urunFiyat) {
		this.urunFiyat = urunFiyat;
	}

	public int getUrunTur() {
		return urunTur;
	}

	public void setUrunTur(int urunTur) {
		this.urunTur = urunTur;
	}
	
	
	
	
}
