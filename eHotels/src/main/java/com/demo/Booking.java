package com.demo;

public class Booking {
    private int roomNumber;
    private int hotelChainID;
    private int hotelID;
    private int customerID;
    private String date;

    public Booking(int roomNumber, int hotelChainID, int hotelID, int customerID, String date) {
        this.roomNumber = roomNumber;
        this.hotelChainID = hotelChainID;
        this.hotelID = hotelID;
        this.customerID = customerID;
        this.date = date;
    }

    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

    public int getHotelChainID() {
        return hotelChainID;
    }

    public void setHotelChainID(int hotelChainID) {
        this.hotelChainID = hotelChainID;
    }

    public int getHotelID() {
        return hotelID;
    }

    public void setHotelID(int hotelID) {
        this.hotelID = hotelID;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}