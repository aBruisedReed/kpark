package com.kgit.kpark.info.vo;

import org.springframework.stereotype.Component;

@Component("infoVO")
public class infoVO {
	
		private String maker;
		private String model;
		private String price;
		private String fc;
		private String fuel;
		public String getMaker() {
			return maker;
		}
		public void setMaker(String maker) {
			this.maker = maker;
		}
		public String getModel() {
			return model;
		}
		public void setModel(String model) {
			this.model = model;
		}
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
		public String getFc() {
			return fc;
		}
		public void setFc(String fc) {
			this.fc = fc;
		}
		public String getFuel() {
			return fuel;
		}
		public void setFuel(String fuel) {
			this.fuel = fuel;
		}
		public String getCarType() {
			return carType;
		}
		public void setCarType(String carType) {
			this.carType = carType;
		}
		private String carType;
}
