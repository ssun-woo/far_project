package com.far.dto;

import lombok.Getter;
import lombok.Setter;

/*-- 메뉴 등록 테이블
create table menu(
    menu_id int primary key,
    store_num int not null,
    menu_name varchar2(255) not null,
    menu_explain varchar2(1000) not null,
    price number(8) not null,
    menu_photo varchar(255) not null,
    foreign key (store_num) REFERENCES store (store_num)
);*/



@Getter
@Setter
public class MenuDTO {
	
	private int menu_id;
	private int store_num;
	private String menu_name;
	private String menu_explain;
	private int menu_price;
	private String menu_photo;
	private String menu_photo2;
	private int standard_num;
	private int max_num;
	private String check_in;
	private String check_out;
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
	public int getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}
	public String getMenu_photo() {
		return menu_photo;
	}
	public void setMenu_photo(String menu_photo) {
		this.menu_photo = menu_photo;
	}
	public String getMenu_photo2() {
		return menu_photo2;
	}
	public void setMenu_photo2(String menu_photo2) {
		this.menu_photo2 = menu_photo2;
	}
	public int getStandard_num() {
		return standard_num;
	}
	public void setStandard_num(int standard_num) {
		this.standard_num = standard_num;
	}
	public int getMax_num() {
		return max_num;
	}
	public void setMax_num(int max_num) {
		this.max_num = max_num;
	}
	public String getCheck_in() {
		return check_in;
	}
	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}
	public String getCheck_out() {
		return check_out;
	}
	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}
	
	
	
}
