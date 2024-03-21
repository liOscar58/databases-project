package com.demo;

public class HotelChain {

    private int id;
    private String name;
    private String addressOfCentralOffice;
    private int numberOfHotels;

    public HotelChain(String name, String addressOfCentralOffice, int numberOfHotels) {
        this.name = name;
        this.addressOfCentralOffice = addressOfCentralOffice;
        this.numberOfHotels = numberOfHotels;
    }

    public HotelChain(int id, String name, String addressOfCentralOffice, int numberOfHotels) {
        this.id = id;
        this.name = name;
        this.addressOfCentralOffice = addressOfCentralOffice;
        this.numberOfHotels = numberOfHotels;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddressOfCentralOffice() {
        return addressOfCentralOffice;
    }

    public void setAddressOfCentralOffice(String addressOfCentralOffice) {
        this.addressOfCentralOffice = addressOfCentralOffice;
    }

    public int getNumberOfHotels() {
        return numberOfHotels;
    }

    public void setNumberOfHotels(int numberOfHotels) {
        this.numberOfHotels = numberOfHotels;
    }

}