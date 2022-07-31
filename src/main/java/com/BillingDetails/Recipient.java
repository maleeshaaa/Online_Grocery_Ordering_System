package com.BillingDetails;

public class Recipient extends LoginRecipient{
	private int order_id;
	private String first_name;
	private String last_name;
	private String company_name;
	private String street_address;
	private String city;
	private String district;
	private String pcode;
	private String phone;
	private String email;
	private String order_notes;

	public Recipient(int login_id, String username, String password, int order_id, String first_name, String last_name, String company_name, String street_address, String city, String district, String pcode, String phone, String email, String order_notes) {
		super(login_id, username, password);
		this.order_id = order_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.company_name = company_name;
		this.street_address = street_address;
		this.city = city;
		this.district = district;
		this.pcode = pcode;
		this.phone = phone;
		this.email = email;
		this.order_notes = order_notes;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getStreet_address() {
		return street_address;
	}

	public void setStreet_address(String street_address) {
		this.street_address = street_address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOrder_notes() {
		return order_notes;
	}

	public void setOrder_notes(String order_notes) {
		this.order_notes = order_notes;
	}
}