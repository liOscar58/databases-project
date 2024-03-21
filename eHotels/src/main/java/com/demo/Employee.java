package com.demo;

public class Employee {
    private int SIN;
    private String firstName;
    private String lastName;
    private String address;
    private String role;

    public Employee(int SIN, String firstName, String lastName, String address, String role) {
        this.SIN = SIN;
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.role = role;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}