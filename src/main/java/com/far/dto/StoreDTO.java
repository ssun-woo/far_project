package com.far.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;



//create table store(
//       store_num int primary key,
//       cate varchar2(50) not null,
//       detail_cate varchar2(50) not null,
//       store_name varchar2(1000) not null,
//       store_intro varchar2(2000) not null,
//       store_addr1 varchar2(1000) not null,
//       store_addr2 varchar2(1000),
//       reg_num varchar2(200) not null,     -- 사업자 등록번호
//       store_logo varchar2(200) not null,
//       reg_date varchar2(50) default sysdate
//   );

@Getter
@Setter
@ToString
@Entity
@Table(name = "store")
public class StoreDTO {
   
	@Id
	@Column(name = "STORENUM")
	private int storeNum;
	
	@Column(name = "CATE")
    private String cate;
	
	@Column(name = "DETAILCATE")
    private String detailCate; // 세부 카페 예 - food 일경우 한식 일식 등
	
	@Column(name = "STORENAME")
    private String storeName;
	
	@Column(name = "STOREINTRO")
    private String storeIntro;
	
	@Column(name = "STOREADDR1")
    private String storeAddr1;
	
	@Column(name = "STOREADDR2")
    private String storeAddr2;
	
	@Column(name = "REGNUM")
    private String regNum;
	
	@Column(name = "STORELOGO")
    private String storeLogo;
	
	@Column(name = "MEMID")
    private String memId;
	
	@Column(name = "REGDATE")
	private String regDate;
	
	@Column(name = "STORESCORE")
	private int storeScore;

}