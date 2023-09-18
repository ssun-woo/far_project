package com.far.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.data.domain.Sort;

@Entity
public class Store {
	@Id
	@Column(name = "STORENAME")
	private String storeName;
	
	@Column(name = "STOREADDR")
	private String storeAddr;
	
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getStoreAddr() {
		return storeAddr;
	}
	public void setStoreAddr(String storeAddr, Sort sort) {
		this.storeAddr = storeAddr;
	}
	
	
}