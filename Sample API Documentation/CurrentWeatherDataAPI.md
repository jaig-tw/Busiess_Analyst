
# Overview
Name of the API: **Current Weather Data API**
Version: **1.0**
Date: **27-01-2026**
By: **Weather Forecast Team**
# Current Weather Data API
Current Weather Data API from OpenWeather provides current weather details of a specified location. You can specify the location by providing its latitude and longitude. So, it:

- Provides weather of a specific location
- Accepts location as latitude and longitude
# Base URL
> https://api.openweathermap.org
# Endpoint
> GET /data/2.5/weather
# How to get the API key
1. Sign in to OpenWeather site.
1. Go to My API Keys section
1. Generate a new API key.
# Ratelimiting
60 calls per minute and 1,000 calls/day for the free base plan
# Query Parameters
| Parameter | Type          | Description | Required/Optional |
| ----------- | ------------|-------------- | ------------------- |
| Latitude | Number | Latitude of the place | Required |
| Longitude | Number | Longitude of the place | Required |
| appid | String | Authentication key for the OpenWeather app| Required |


# What do you need to use the API
- API key name and its value
# Authentication
Authentication is done using API key
| Parameter | Description | Details |
| --------- | ----------  |------- |
| appid | *ummyid123456*  | Query Parameter |
# Example Request
>GET
https://api.openweathermap.org/data/2.5/weather?lat=11&lon=75&appid=5b0653c25ce5cf2cb349ad0483125c05

# Response Body
YAML 
```YAML
coord:
  lon: 75
  lat: 11
weather:
  - id: 804
    main: Clouds
    description: overcast clouds
    icon: 04d
base: stations
main:
  temp: 300.32
  feels_like: 302.12
  temp_min: 300.32
  temp_max: 300.32
  pressure: 1014
  humidity: 68
  sea_level: 1014
  grnd_level: 1014
visibility: 10000
wind:
  speed: 0.95
  deg: 35
  gust: 1.2
clouds:
  all: 99
dt: 1769500471
sys:
  country: IN
  sunrise: 1769477035
  sunset: 1769518871
timezone: 18000
id: 1265873
name: Kozhikode
cod: 200


```
JSON 
```json
{
    "coord": {
        "lon": 75,
        "lat": 11
    },
    "weather": [
        {
            "id": 804,
            "main": "Clouds",
            "description": "overcast clouds",
            "icon": "04d"
        }
    ],
    "base": "stations",
    "main": {
        "temp": 300.32,
        "feels_like": 302.12,
        "temp_min": 300.32,
        "temp_max": 300.32,
        "pressure": 1014,
        "humidity": 68,
        "sea_level": 1014,
        "grnd_level": 1014
    },
    "visibility": 10000,
    "wind": {
        "speed": 0.95,
        "deg": 35,
        "gust": 1.2
    },
    "clouds": {
        "all": 99
    },
    "dt": 1769500471,
    "sys": {
        "country": "IN",
        "sunrise": 1769477035,
        "sunset": 1769518871
    },
    "timezone": 18000,
    "id": 1265873,
    "name": "Kozhikode",
    "cod": 200
}


```

# Status
The following error codes are standard HTTP responses returned by the OpenWeather API.
|Status Code| Message| Result|
|-----------|--------|-------|
|200 | OK | Passed|
|401| Unautherized| Invalide API Key|
|404| Not found | Location Not Found|
|429| Too many requests | Rate limit exceeded|
|500 | Server Error | Internal Error|

# Request Headers

|Key | Value |
|----| ------|
|Date| Tue, 27 Jan 2026 07:54:31 GMT |
|Content-Type | application/json; charset=utf-8 |
| Content-Length | 495 |
| Connection | keep-alive |
| X-Cache-Key | /data/2.5/weather?lat=11&lon=75 |
| Access-Control-Allow-Origin | * |
|Access-Control-Allow-Credentials | true |
| Access-Control-Allow-Methods | GET, POST|



