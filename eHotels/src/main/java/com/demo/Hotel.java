package com.demo;

public class Hotel {
    private int id;
    private int hotelChainID;
    private String name;
    private int category;
    private int numberOfRooms;
    private String address;
    private String contactEmail;

    public Hotel(int hotelChainID, String name, int category, int numberOfRooms, String address, String contactEmail) {
        this.hotelChainID = hotelChainID;
        this.name = name;
        this.category = category;
        this.numberOfRooms = numberOfRooms;
        this.address = address;
        this.contactEmail = contactEmail;
    }

    public Hotel(int id, int hotelChainID, String name, int category, int numberOfRooms, String address, String contactEmail) {
        this.id = id;
        this.hotelChainID = hotelChainID;
        this.name = name;
        this.category = category;
        this.numberOfRooms = numberOfRooms;
        this.address = address;
        this.contactEmail = contactEmail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int gethotelChainID() {
        return hotelChainID;
    }

    public void sethotelChainID(int hotelChainID) {
        this.hotelChainID = hotelChainID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public int getNumberOfRooms() {
        return numberOfRooms;
    }

    public void setNumberOfRooms(int numberOfRooms) {
        this.numberOfRooms = numberOfRooms;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }
}