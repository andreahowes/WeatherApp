package com.andreah.WeatherApp.service;

import com.andreah.WeatherApp.data.WeatherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class WeatherService {
    //maybe put the weatherRepository in the constructor?

    @Autowired
    private WeatherRepository weatherRepository;

    @Transactional(readOnly = true)

    @PreAuthorize("hasRole('WEATHER_READER')")
    public Weather getWeatherFromLocation(String location) {
        return weatherRepository.getWeather(location);
    }

    //securing access to company objects in service layer so transactional and preauthorize are needed
    // @Transactional(readOnly = true)
//
    // @PreAuthorize("hasRole('WEATHER_READER')")
    // public List<Weather> getAll() {
    //     return weatherRepository.findAll();
    // }

}
