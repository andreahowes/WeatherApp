package com.andreah.WeatherApp.data.repositories;

import com.andreah.WeatherApp.data.pojos.Weather;

public interface WeatherRepository {
    //List<Weather> findAll();

    Weather getWeather(String location);
}
