package com.far.dto;
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

import lombok.Getter;
import lombok.Setter;

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
}
