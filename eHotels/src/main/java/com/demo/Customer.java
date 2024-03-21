package com.demo;

public class Customer {
    private int SIN;
    private String firstName;
    private String lastName;
    private String address;
    private String dateOfRegistration;

    public Customer(int SIN, String firstName, String lastName, String address, String dateOfRegistration) {
        this.SIN = SIN;
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.dateOfRegistration = dateOfRegistration;
    }

    public int getSIN() {
        return SIN;
    }

    public void setSIN(int SIN) {
        this.SIN = SIN;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDateOfRegistration() {
        return dateOfRegistration;
    }

    public void setDateOfRegistration(String dateOfRegistration) {
        this.dateOfRegistration = dateOfRegistration;
    }
}