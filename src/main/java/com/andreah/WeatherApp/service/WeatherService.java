package com.andreah.WeatherApp.service;

import com.andreah.WeatherApp.data.pojos.ApiWeather;
import com.andreah.WeatherApp.data.pojos.Weather;
import com.andreah.WeatherApp.data.repositories.WeatherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.DefaultUriBuilderFactory;

import java.net.URI;

@Service
@PropertySource("classpath:weatherAPIapplication.properties")
public class WeatherService implements WeatherRepository {

    private static final String PATH = "weather";
    private static final String QUERY = "q";

    @Value("${api.weather.baseurl}")
    private String BASE_URL;
    @Value("${api.weather.apikey.param}")
    private String APPID;
    @Value("${api.weather.apikey.value}")
    private String API_KEY;

    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    private WeatherRepository weatherRepository;

    /*


     */
    public static Weather mapWeather(ApiWeather apiWeather) {
        Weather weather = new Weather();
        Double temp = apiWeather.getMain().getTemp();
        weather.setTemp(getTheTempInF(temp));
        return weather;
    }

    public static double getTheTempInF(Double temp) {
        Double tempF = ((9d / 5 * (temp - 273)) + 32);
        String format = String.format("%.2f", tempF);
        return Double.valueOf(format);
    }

    @Override
    public Weather getWeather(String location) {
        URI uri = new DefaultUriBuilderFactory()
                .uriString(BASE_URL)
                .path(PATH)
                .queryParam(QUERY, location)
                .queryParam(APPID, API_KEY)
                .build();
        ApiWeather apiWeather = restTemplate.getForObject(uri, ApiWeather.class);
        Weather weather = mapWeather(apiWeather);
        return weather;
    }

    @Transactional(readOnly = true)
    @PreAuthorize("hasRole('WEATHER_READER')")
    public Weather getWeatherFromLocation(String location) {
        return weatherRepository.getWeather(location);
    }

}
