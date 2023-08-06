package com.example.articz.playvault.playvault.Entity;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
public class Assets {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private UUID id;

   private  String assetname;
   private  double assetprice;

   private boolean owned;

   private String photourl;

   @ManyToOne
   @JoinColumn(name = "ownedby_id")
   private User ownedby;

   private String metadata;

   private  double returns;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getAssetname() {
        return assetname;
    }

    public void setAssetname(String assetname) {
        this.assetname = assetname;
    }

    public double getAssetprice() {
        return assetprice;
    }

    public void setAssetprice(double assetprice) {
        this.assetprice = assetprice;
    }

    public boolean isOwned() {
        return owned;
    }

    public void setOwned(boolean owned) {
        this.owned = owned;
    }

    public String getPhotourl() {
        return photourl;
    }

    public void setPhotourl(String photourl) {
        this.photourl = photourl;
    }

    public User getOwnedby() {
        return ownedby;
    }

    public void setOwnedby(User ownedby) {
        this.ownedby = ownedby;
    }

    public String getMetadata() {
        return metadata;
    }

    public void setMetadata(String metadata) {
        this.metadata = metadata;
    }

    public double getReturns() {
        return returns;
    }

    public void setReturns(double returns) {
        this.returns = returns;
    }
}
