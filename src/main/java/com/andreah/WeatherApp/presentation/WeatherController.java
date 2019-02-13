package com.andreah.WeatherApp.presentation;

import com.andreah.WeatherApp.data.pojos.Weather;
import com.andreah.WeatherApp.service.WeatherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/secured/weather")
public class WeatherController {

    @Autowired
    private WeatherService weatherService;

    /**
     * @return The String value of the temperature in Fahrenheit at the current time and location.
     */
    @GetMapping
    public String getTemp(){
        Weather weather = weatherService.getWeatherFromLocation("Louisville");
        double temp = weather.getTemp();
        return "The temperature in Louisville is: " + temp + " F";
    }
}
