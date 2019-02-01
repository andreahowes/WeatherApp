package com.andreah.WeatherApp.service;

public class Calculations {
    public static double getTheTempInF(Double temp) {
        Double tempF = ((9d / 5 * (temp - 273)) + 32);
        String format = String.format("%.2f", tempF);
        return Double.valueOf(format);
    }
}
