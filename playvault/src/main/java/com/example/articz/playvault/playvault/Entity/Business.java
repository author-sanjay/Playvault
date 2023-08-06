package com.example.articz.playvault.playvault.Entity;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
public class Business {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;


    private String name;

    private  double perhouroutcome;

    private  long level;
    private long maxlevel;

    private double totalearningforuser;

    private double initialcost;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private  User user;

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

    public double getPerhouroutcome() {
        return perhouroutcome;
    }

    public void setPerhouroutcome(double perhouroutcome) {
        this.perhouroutcome = perhouroutcome;
    }

    public long getLevel() {
        return level;
    }

    public void setLevel(long level) {
        this.level = level;
    }

    public long getMaxlevel() {
        return maxlevel;
    }

    public void setMaxlevel(long maxlevel) {
        this.maxlevel = maxlevel;
    }

    public double getTotalearningforuser() {
        return totalearningforuser;
    }

    public void setTotalearningforuser(double totalearningforuser) {
        this.totalearningforuser = totalearningforuser;
    }

    public double getInitialcost() {
        return initialcost;
    }

    public void setInitialcost(double initialcost) {
        this.initialcost = initialcost;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
