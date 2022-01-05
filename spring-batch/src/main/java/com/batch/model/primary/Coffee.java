package com.batch.model.primary;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "coffee")
public class Coffee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "coffee_id")
	private int id;
	
	@Column(name = "brand")
    private String brand;
	
	@Column(name = "origin")
    private String origin;
	
	@Column(name = "characteristics")
    private String characteristics;
	
	public Coffee(String brand, String origin, String characteristics) {
		super();
		this.brand = brand;
		this.origin = origin;
		this.characteristics = characteristics;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getCharacteristics() {
		return characteristics;
	}

	public void setCharacteristics(String characteristics) {
		this.characteristics = characteristics;
	}
}
