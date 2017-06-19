package com.niit.ShoppingCartBackend.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="Supplier")
@Component
public class Supplier {

	@Id
	@GeneratedValue
private String id;
	
	@Column
	private String suppliername;
	private String email_id;
	private String address;
	private String phone_no;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getsuppliername() {
		return suppliername;
	}
	public void setsuppliername(String suppliername) {
		this.suppliername = suppliername;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	

}
