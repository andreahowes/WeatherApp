package com.andreah.WeatherApp.presentation;

import com.andreah.WeatherApp.data.pojos.Weather;
import com.andreah.WeatherApp.service.WeatherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/secured/weather")
public class WeatherApiController {

    @Autowired
    private WeatherService weatherService;

    /**
     * @return The String value of the temperature in Fahrenheit at the current time and location.
     */
    @GetMapping("/{city}")
    public String getTemp(@PathVariable String city){
        Weather weather = weatherService.getWeatherFromLocation(city);
        double temp = weather.getTemp();
        return "The temperature in " + city + " is: " + temp + " F";
    }
}
