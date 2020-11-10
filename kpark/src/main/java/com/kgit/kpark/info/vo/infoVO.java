<<<<<<< HEAD
package com.kgit.kpark.info.vo;

import org.springframework.stereotype.Component;

@Component("infoVO")
public class infoVO {
	
		private String maker;
		private String model;
		private String price;
		private String fc;
		private String fuel;
		private String carType;
		private int code;
		private String image;
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public int getCode() {
			return code;
		}
		public void setCode(int code) {
			this.code = code;
		}
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
		
}
=======
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
>>>>>>> branch 'main' of https://github.com/aBruisedReed/kpark.git
