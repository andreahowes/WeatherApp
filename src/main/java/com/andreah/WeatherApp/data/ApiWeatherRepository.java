package com.andreah.WeatherApp.data;


import com.andreah.WeatherApp.service.Weather;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.DefaultUriBuilderFactory;

import java.net.URI;

@Repository
@PropertySource("classpath:weatherAPIapplication.properties")
public class ApiWeatherRepository implements WeatherRepository{
    private static final String PATH = "weather";
    private static final String QUERY = "q";
    @Value("${api.weather.baseurl}")
    private String BASE_URL;
    @Value("${api.weather.apikey.param}")
    private String APPID;
    @Value("${api.weather.apikey.value}")
    private String API_KEY;

    private RestTemplate restTemplate;

    @Autowired
    public ApiWeatherRepository(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @Override
    public Weather getWeather(String location) {
        URI uri = new DefaultUriBuilderFactory()
                .uriString(BASE_URL)
                .path(PATH)
                .queryParam(QUERY, location)
                .queryParam(APPID,API_KEY)
                .build();
        ApiWeather apiWeather = restTemplate.getForObject(uri, ApiWeather.class);
        Weather weather = WeatherMapper.mapWeather(apiWeather);
        return weather;
    }

    // @Autowired
  // public ApiWeatherRepository(RestTemplate restTemplate) {
  //     this.restTemplate = restTemplate;
  // }


  // @Override
  // public Weather getWeather(String location) {
  //     URI uri = new DefaultUriBuilderFactory()
  //             .uriString(BASE_URL)
  //             .path(PATH)
  //             .queryParam(QUERY, location)
  //             .queryParam(APPID, API_KEY)
  //             .build();
  //     ApiWeather apiWeather = restTemplate.getForObject(uri, ApiWeather.class);
  //     Weather weather = WeatherMapper.mapWeather(apiWeather);
  //     return weather;
  // }
}
