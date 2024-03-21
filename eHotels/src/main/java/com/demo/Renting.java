package com.demo;

public class Renting {
    private int roomNumber;
    private int hotelChainID;
    private int hotelID;
    private int customerID;
    private int employeeID;
    private String date;

    public Renting(int roomNumber, int hotelChainID, int hotelID, int customerID, int employeeID, String date) {
        this.roomNumber = roomNumber;
        this.hotelChainID = hotelChainID;
        this.hotelID = hotelID;
        this.customerID = customerID;
        this.employeeID = employeeID;
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

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}