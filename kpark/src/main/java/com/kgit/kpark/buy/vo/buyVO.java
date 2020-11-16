package com.kgit.kpark.buy.vo;


import org.springframework.stereotype.Component;

@Component("buyVO")
public class buyVO {
	
	private String MemberName;
	private int MobileNo1;
	private int MobileNo2;
	private int MobileNo3;
	private String CityCode;
	private String Passwd;
	private String MakerCode;
	private String CarName;
	private String YYMM;
	private String GasCode;
	private String Km;
	private String AutoGbnCode;
	private String ColorCode;
	private String DemoAmt;

	private  String Contents;

	
	
	
	
	
	
	
	
	public String getMemberName() {
		return MemberName;
	}
	public void setMemberName(String memberName) {
		MemberName = memberName;
	}
	public int getMobileNo1() {
		return MobileNo1;
	}
	public void setMobileNo1(int mobileNo1) {
		MobileNo1 = mobileNo1;
	}
	public int getMobileNo2() {
		return MobileNo2;
	}
	public void setMobileNo2(int mobileNo2) {
		MobileNo2 = mobileNo2;
	}
	public int getMobileNo3() {
		return MobileNo3;
	}
	public void setMobileNo3(int mobileNo3) {
		MobileNo3 = mobileNo3;
	}
	public String getCityCode() {
		return CityCode;
	}
	public void setCityCode(String cityCode) {
		CityCode = cityCode;
	}
	public String getPasswd() {
		return Passwd;
	}
	public void setPasswd(String passwd) {
		Passwd = passwd;
	}
	public String getMakerCode() {
		return MakerCode;
	}
	public void setMakerCode(String makerCode) {
		MakerCode = makerCode;
	}
	public String getCarName() {
		return CarName;
	}
	public void setCarName(String carName) {
		CarName = carName;
	}
	public String getYYMM() {
		return YYMM;
	}
	public void setYYMM(String yYMM) {
		YYMM = yYMM;
	}
	public String getGasCode() {
		return GasCode;
	}
	public void setGasCode(String gasCode) {
		GasCode = gasCode;
	}
	public String getKm() {
		return Km;
	}
	public void setKm(String km) {
		Km = km;
	}
	public String getAutoGbnCode() {
		return AutoGbnCode;
	}
	public void setAutoGbnCode(String autoGbnCode) {
		AutoGbnCode = autoGbnCode;
	}
	public String getColorCode() {
		return ColorCode;
	}
	public void setColorCode(String colorCode) {
		ColorCode = colorCode;
	}
	public String getDemoAmt() {
		return DemoAmt;
	}
	public void setDemoAmt(String demoAmt) {
		DemoAmt = demoAmt;
	}
//	public String getSale_chk01() {
//		return sale_chk01;
//	}
//	public void setSale_chk01(String sale_chk01) {
//		this.sale_chk01 = sale_chk01;
//	}
//	public String getSale_chk02() {
//		return sale_chk02;
//	}
//	public void setSale_chk02(String sale_chk02) {
//		this.sale_chk02 = sale_chk02;
//	}
	public String getContents() {
		return Contents;
	}
	public void setContents(String contents) {
		Contents = contents;
	}
}
