package com.aydin.edu.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Country {
    private int id;
    private String name;
    private String capital;
    private String code;
    private String continent;
    private String population;
    private String area;
    private String currency;
    private String flag;

    public Country(){}
    public Country(int id, String name, String capital, String code, String continent, String population, String are, String currency, String flag) {
        this.id = id;
        this.name = name;
        this.capital = capital;
        this.code = code;
        this.continent = continent;
        this.population = population;
        this.area = area;
        this.currency = currency;
        this.flag = flag;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCapital() {
        return capital;
    }

    public void setCapital(String capital) {
        this.capital = capital;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getContinent() {
        return continent;
    }

    public void setContinent(String continent) {
        this.continent = continent;
    }

    public String getPopulation() {
        return population;
    }

    public void setPopulation(String population) {
        this.population = population;
    }

    public String getAre() {
        return area;
    }

    public void setAre(String are) {
        this.area = are;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }
}
