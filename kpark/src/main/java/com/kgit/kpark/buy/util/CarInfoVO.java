package com.kgit.kpark.buy.util;

public class CarInfoVO {
	private String carModel;
	private int startIndex;
	private String[] carType;
	private String keyword;
	
	public CarInfoVO() {
		carModel = "";
		carType = new String[0];
		keyword = "";
	}
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public String[] getCarType() {
		return carType;
	}
	public void setCarType(String[] carType) {
		this.carType = carType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
}
