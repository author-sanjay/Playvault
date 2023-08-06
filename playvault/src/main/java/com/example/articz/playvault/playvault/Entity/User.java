package com.example.articz.playvault.playvault.Entity;

import jakarta.persistence.*;

import java.util.List;
import java.util.UUID;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;


    private  String name;
    private  String username;

    private  String Address;
    private  String phonenumber;
    private  String email;
    private String password;
    private  String temppassword;
    private String city;
    private  String country;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Business> businesses;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Wallet> walletList;

    @OneToMany(mappedBy = "ownedby", cascade =  CascadeType.ALL)
    private List<Assets> assetsList;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTemppassword() {
        return temppassword;
    }

    public void setTemppassword(String temppassword) {
        this.temppassword = temppassword;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public List<Business> getBusinesses() {
        return businesses;
    }

    public void setBusinesses(List<Business> businesses) {
        this.businesses = businesses;
    }

    public List<Wallet> getWalletList() {
        return walletList;
    }

    public void setWalletList(List<Wallet> walletList) {
        this.walletList = walletList;
    }

    public List<Assets> getAssetsList() {
        return assetsList;
    }

    public void setAssetsList(List<Assets> assetsList) {
        this.assetsList = assetsList;
    }
}
