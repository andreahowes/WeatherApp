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
     *
     * @return
     */
    @GetMapping
    public String getAll(){
        String str = "andrea";
        char c = str.charAt(2);

        Weather weather = weatherService.getWeatherFromLocation("Louisville");
        double temp = weather.getTemp();
        return "The temperature in Louisville is: " + temp + " F";
    }
}
