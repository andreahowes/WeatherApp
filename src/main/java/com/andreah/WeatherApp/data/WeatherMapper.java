package com.andreah.WeatherApp.data;

import com.andreah.WeatherApp.service.Weather;
import org.springframework.stereotype.Service;

@Service
public class WeatherMapper {

    public static Weather mapWeather(ApiWeather apiWeather){
        Weather weather = new Weather();
        Double temp = apiWeather.getMain().getTemp();
        weather.setTemp(Calculations.getTheTempInF(temp));
        return weather;
    }
}
