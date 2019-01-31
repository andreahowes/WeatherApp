package com.andreah.WeatherApp.service;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

//@Entity
//@Table(name = "WEATHER", uniqueConstraints = {@UniqueConstraint(columnNames = {"CITY"})})
//@Getter
//@Setter
//@EqualsAndHashCode(of = "id")
public class Weather {//implements Serializable {
    private boolean raining;
    private double temp;

    public boolean isRaining() {
        return raining;
    }

    public void setRaining(boolean raining) {
        this.raining = raining;
    }

    public double getTemp() {
        return temp;
    }

    public void setTemp(double temp) {
        this.temp = temp;
    }

    //@Id
    //@GeneratedValue(strategy = GenerationType.AUTO)
    //@Column(name = "ID", updatable = false, nullable = false)
    //private Long id = null;
//
    //@Column(name = "CITY", nullable = false)
    //private String city;


}
