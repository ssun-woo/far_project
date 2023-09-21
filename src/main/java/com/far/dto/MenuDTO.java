package com.far.dto;

import lombok.Getter;
import lombok.Setter;

//create table menu(
//    menu_id 		int 			primary key,
//    store_num 	int 			not null,
//    menu_name 	varchar2(255) 	not null,
//    menu_explain 	varchar2(1000) 	not null,
//    price 		number(8) 	 	not null,
//    menu_photo 	varchar(255) 	not null
//);

@Getter
@Setter
public class MenuDTO {

	private int menu_id;
	private int store_num;
	private String menu_name;
	private String menu_explain;
	private int price;
	private String menu_photo;
	
	public int getMenu_id() {
		return menu_id;
	}
	public void setMenu_id(int menu_id) {
		this.menu_id = menu_id;
	}
	public int getStore_num() {
		return store_num;
	}
	public void setStore_num(int store_num) {
		this.store_num = store_num;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_explain() {
		return menu_explain;
	}
	public void setMenu_explain(String menu_explain) {
		this.menu_explain = menu_explain;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMenu_photo() {
		return menu_photo;
	}
	public void setMenu_photo(String menu_photo) {
		this.menu_photo = menu_photo;
	}
}
