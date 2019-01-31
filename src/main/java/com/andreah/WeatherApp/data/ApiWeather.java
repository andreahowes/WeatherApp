package com.andreah.WeatherApp.data;

import org.springframework.stereotype.Service;

@Service
public class ApiWeather {
    private String name;
    private ApiInfoMain main;
    private ApiInfoSys sys;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ApiInfoMain getMain() {
        return main;
    }

    public void setMain(ApiInfoMain main) {
        this.main = main;
    }

    public ApiInfoSys getSys() {
        return sys;
    }

    public void setSys(ApiInfoSys sys) {
        this.sys = sys;
    }
}
