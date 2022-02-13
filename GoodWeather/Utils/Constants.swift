//
//  Constants.swift
//  GoodWeather
//
//  Created by Matthew Ogtong on 2/13/22.
//

import Foundation

// Cosntants file can be used to construct URLs

struct Constants {
    
    struct K {
        
        static let reuseableWeatherCell = "WeatherCell"
        
        static let addWeatherCityVCIdentifier = "AddWeatherCityViewController"
        
    }
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
            // get the default settings for temperature
//            let userDefaults = UserDefaults.standard
//            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=e902673bb052b9dca3cf1e6308d3ceb7&units=imperial")!
            
        }
        
    }
    
}
