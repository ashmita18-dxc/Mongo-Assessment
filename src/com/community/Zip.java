package com.community;

public class Zip {
	private String title;
	private String city;
	private String pin;
	private String desc;
	private String email;
	private String phone;
	
	public Zip(String title,String city,String pin,String desc,String email,String phone){
		this.title=title;
		this.city=city;
		this.pin=pin;
		this.desc=desc;
		this.email=email;
		this.phone=phone;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
