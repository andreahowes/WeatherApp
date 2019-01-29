package com.andreah.oauth2tutorial20190109.data;

import com.andreah.oauth2tutorial20190109.service.Weather;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class MySqlWeatherRepository implements WeatherRepository{

    @PersistenceContext
    private EntityManager entityManager;

    public List<Weather> findAll() {
        CriteriaBuilder builder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Weather> query = builder.createQuery(Weather.class);
        Root<Weather> root = query.from(Weather.class);
        query.select(root).distinct(true);
        TypedQuery<Weather> allQuery = entityManager.createQuery(query);

        return allQuery.getResultList();
    }
}






















