package com.PcPartPicker.BackEnd.RAM;


import com.PcPartPicker.BackEnd._Model.electronicComponents;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;


@Entity
@Table(name ="ram")
public class RAM extends electronicComponents {

    private int numberOfRam;

    @Column(name = "DDR")
    @NotEmpty
    private String DDR = new String();

    @Column(name = "clockSpeed")
    @NotEmpty
    private int clockSpeed;

    @Column(name = "sizeOfRam")
    @NotEmpty
    private int sizeOfRam;

    public int getNumberOfRam() {
        return numberOfRam;
    }

    public int getClockSpeed() {
        return clockSpeed;
    }

    public int getSizeOfRam() {
        return sizeOfRam;
    }

    public String getDDR() {
        return DDR;
    }

    public void setClockSpeed(int clockSpeed) {
        this.clockSpeed = clockSpeed;
    }

    public void setNumberOfRam(int numberOfRam) {
        this.numberOfRam = numberOfRam;
    }

    public void setSizeOfRam(int sizeOfRam) {
        this.sizeOfRam = sizeOfRam;
    }

    public void setDDR(String DDR) {
        this.DDR = DDR;
    }

    @Override
    public double getPrice() {
        return super.getPrice()*numberOfRam;
    }

    @Override
    public void setPrice(double price) {
        super.setPrice(price*numberOfRam);
    }
}
