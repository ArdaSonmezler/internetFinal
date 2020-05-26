package com.IP.Classes;

import java.util.*;
public class Siparisler {

	private int siparisKodu;
	private String siparisTarihi;
	private int masaKodu;
	private int toplam;
	private List<Urunler> urun;
	
	

	public Siparisler(int siparisKodu, String siparisTarihi, int masaKodu, List<Urunler> urun) {
		super();
		this.siparisKodu = siparisKodu;
		this.siparisTarihi = siparisTarihi;
		this.masaKodu = masaKodu;
		this.urun = urun;
	}

	
	
	public Siparisler(int siparisKodu, String siparisTarihi, int masaKodu) {
		super();
		this.siparisKodu = siparisKodu;
		this.siparisTarihi = siparisTarihi;
		this.masaKodu = masaKodu;
	}


	

	public Siparisler(String siparisTarihi, int masaKodu, int toplam) {
		super();
		this.siparisTarihi = siparisTarihi;
		this.masaKodu = masaKodu;
		this.toplam = toplam;
	}



	public int getToplam() {
		return toplam;
	}



	public void setToplam(int toplam) {
		this.toplam = toplam;
	}



	public Siparisler(int siparisKodu, String siparisTarihi, int masaKodu, int toplam) {
		super();
		this.siparisKodu = siparisKodu;
		this.siparisTarihi = siparisTarihi;
		this.masaKodu = masaKodu;
		this.toplam = toplam;
	}



	public int getSiparisKodu() {
		return siparisKodu;
	}

	public void setSiparisKodu(int siparisKodu) {
		this.siparisKodu = siparisKodu;
	}

	public String getSiparisTarihi() {
		return siparisTarihi;
	}

	public void setSiparisTarihi(String siparisTarihi) {
		this.siparisTarihi = siparisTarihi;
	}

	public int getMasaKodu() {
		return masaKodu;
	}

	public void setMasaKodu(int masaKodu) {
		this.masaKodu = masaKodu;
	}

	public List<Urunler> getUrun() {
		return urun;
	}

	public void setUrun(List<Urunler> urun) {
		this.urun = urun;
	}

	
	
}
