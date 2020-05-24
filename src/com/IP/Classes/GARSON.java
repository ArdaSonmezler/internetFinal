package com.IP.Classes;


public class GARSON {
	private String adsoyad;
	private long tcno;
	private String dtarihi;
	
	public GARSON(String adsoyad, long tcno,String dtarihi){
		this.adsoyad = adsoyad;
		this.tcno = tcno;
		this.dtarihi = dtarihi;
	}
	
	public String getAdsoyad() {
		return adsoyad;
	}
	public void setAdsoyad(String adsoyad) {
		this.adsoyad = adsoyad;
	}
	public long getTcno() {
		return tcno;
	}
	public void setTcno(long tcno) {
		this.tcno = tcno;
	}
	public String getDtarihi() {
		return dtarihi;
	}
	public void setDtarihi(String dtarihi) {
		this.dtarihi = dtarihi;
	}
	
}
