package com.demo;

public class Room {
    private int roomNumber;
    private int hotelChainID;
    private int hotelID;
    private int price;
    private int capacity;
    private String roomView;
    private boolean canBeExtended;
    private boolean hasProblems;

    public Room(int roomNumber, int hotelChainID, int hotelID, int price, int capacity, String roomView, boolean canBeExtended, boolean hasProblems) {
        this.roomNumber = roomNumber;
        this.hotelChainID = hotelChainID;
        this.hotelID = hotelID;
        this.price = price;
        this.capacity = capacity;
        this.roomView = roomView;
        this.canBeExtended = canBeExtended;
        this.hasProblems = hasProblems;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getRoomView() {
        return roomView;
    }

    public void setRoomView(String roomView) {
        this.roomView = roomView;
    }

    public boolean isCanBeExtended() {
        return canBeExtended;
    }

    public void setCanBeExtended(boolean canBeExtended) {
        this.canBeExtended = canBeExtended;
    }

    public boolean isHasProblems() {
        return hasProblems;
    }

    public void setHasProblems(boolean hasProblems) {
        this.hasProblems = hasProblems;
    }
}