//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Matthew Ogtong on 2/12/22.
//

import Foundation

struct WeatherResponse: Decodable {
    
    let name: String
    let main: Weather
    
}

struct Weather: Decodable {
    
    let temp: Double
    let humidity: Double
    
}
