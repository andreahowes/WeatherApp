package com.andreah.WeatherApp.data;

import org.springframework.stereotype.Service;

@Service
public class ApiWeather {
    private String name;
    private ApiInfoMain main;

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
}
