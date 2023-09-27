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
public class RoomDTO {


   private int roomNum;
   private int storeNum;
   private String roomName;
   private String roomExplain;
   private int roomPrice;
   private String roomPhoto;
   private String roomPhoto2; // 실제 테이블에 들어갈 이름이 아닌 임시 저장소
   private int standardNum;
   private int maxNum;
   private String checkIn;
   private String checkOut;

   public int getRoomNum() {
      return roomNum;
   }

   public void setRoomNum(int roomNum) {
      this.roomNum = roomNum;
   }

   public int getStoreNum() {
      return storeNum;
   }

   public void setStoreNum(int storeNum) {
      this.storeNum = storeNum;
   }

   public String getRoomName() {
      return roomName;
   }

   public void setRoomName(String roomName) {
      this.roomName = roomName;
   }

   public String getRoomExplain() {
      return roomExplain;
   }

   public void setRoomExplain(String roomExplain) {
      this.roomExplain = roomExplain;
   }

   public int getRoomPrice() {
      return roomPrice;
   }

   public void setRoomPrice(int roomPrice) {
      this.roomPrice = roomPrice;
   }

   public String getRoomPhoto() {
      return roomPhoto;
   }

   public void setRoomPhoto(String roomPhoto) {
      this.roomPhoto = roomPhoto;
   }

   public String getRoomPhoto2() {
      return roomPhoto2;
   }

   public void setRoomPhoto2(String roomPhoto2) {
      this.roomPhoto2 = roomPhoto2;
   }

   public int getStandardNum() {
      return standardNum;
   }

   public void setStandardNum(int standardNum) {
      this.standardNum = standardNum;
   }

   public int getMaxNum() {
      return maxNum;
   }

   public void setMaxNum(int maxNum) {
      this.maxNum = maxNum;
   }

   public String getCheckIn() {
      return checkIn;
   }

   public void setCheckIn(String checkIn) {
      this.checkIn = checkIn;
   }

   public String getCheckOut() {
      return checkOut;
   }

   public void setCheckOut(String checkOut) {
      this.checkOut = checkOut;
   }

}

