package com.far.dto;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

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
   
   @Column(name = "MEMID")
    private String memId;
   
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

   
   @Column(name = "REGDATE", columnDefinition = "TIMESTAMP DEFAULT SYSDATE")
   private Timestamp regDate;
   
   @Column(name = "STORESCORE", columnDefinition = "INT DEFAULT 0")
   private int storeScore;
   
   @Column(name = "AUTH", columnDefinition = "INT DEFAULT 0")
   private int auth;


   public int getStoreNum() {
      return storeNum;
   }

   public void setStoreNum(int storeNum) {
      this.storeNum = storeNum;
   }

   public String getCate() {
      return cate;
   }

   public void setCate(String cate) {
      this.cate = cate;
   }

   public String getDetailCate() {
      return detailCate;
   }

   public void setDetailCate(String detailCate) {
      this.detailCate = detailCate;
   }

   public String getStoreName() {
      return storeName;
   }

   public void setStoreName(String storeName) {
      this.storeName = storeName;
   }

   public String getStoreIntro() {
      return storeIntro;
   }

   public void setStoreIntro(String storeIntro) {
      this.storeIntro = storeIntro;
   }

   public String getStoreAddr1() {
      return storeAddr1;
   }

   public void setStoreAddr1(String storeAddr1) {
      this.storeAddr1 = storeAddr1;
   }

   public String getStoreAddr2() {
      return storeAddr2;
   }

   public void setStoreAddr2(String storeAddr2) {
      this.storeAddr2 = storeAddr2;
   }

   public String getRegNum() {
      return regNum;
   }

   public void setRegNum(String regNum) {
      this.regNum = regNum;
   }

   public String getStoreLogo() {
      return storeLogo;
   }

   public void setStoreLogo(String storeLogo) {
      this.storeLogo = storeLogo;
   }

   public String getMemId() {
      return memId;
   }

   public void setMemId(String memId) {
      this.memId = memId;
   }


   public Timestamp getRegDate() {
      return regDate;
   }

   public void setRegDate(Timestamp regDate) {
      this.regDate = regDate;
   }


   public int getStoreScore() {
      return storeScore;
   }

   public void setStoreScore(int storeScore) {
      this.storeScore = storeScore;
   }

   public int getAuth() {
      return auth;
   }

   public void setAuth(int auth) {
      this.auth = auth;
   }
   
}