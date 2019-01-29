package com.andreah.WeatherApp.data;

import com.andreah.WeatherApp.service.Weather;

import java.util.List;

public interface WeatherRepository {
    List<Weather> findAll();

}
