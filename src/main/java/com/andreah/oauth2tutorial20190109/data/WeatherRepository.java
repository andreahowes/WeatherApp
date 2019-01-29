package com.andreah.oauth2tutorial20190109.data;

import com.andreah.oauth2tutorial20190109.service.Weather;

import java.util.List;

public interface WeatherRepository {
    List<Weather> findAll();

}
