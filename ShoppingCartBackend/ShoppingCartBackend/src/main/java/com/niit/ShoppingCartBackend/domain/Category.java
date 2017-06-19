package com.niit.ShoppingCartBackend.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;



@Entity
@Table(name="Category")
@Component
public class Category {

	@Id
	@GeneratedValue
	private String id;
	
	private String category_name;
    private String category_Description;
   public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}

public String getCategory_name() {
	return category_name;
}
public void setCategory_name(String category_name) {
	this.category_name = category_name;
}
public String getCategory_Description() {
	return category_Description;
}
public void setCategory_Description(String category_Description) {
	this.category_Description = category_Description;
}

}
