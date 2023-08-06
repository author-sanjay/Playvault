package com.example.articz.playvault.playvault.Entity;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
public class Wallet {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;

    private double balance;

    private boolean ismain;

    private boolean ofbusiness;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public boolean isIsmain() {
        return ismain;
    }

    public void setIsmain(boolean ismain) {
        this.ismain = ismain;
    }

    public boolean isOfbusiness() {
        return ofbusiness;
    }

    public void setOfbusiness(boolean ofbusiness) {
        this.ofbusiness = ofbusiness;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
