//
//  AddWeatherViewModel.swift
//  GoodWeather
//
//  Created by Matthew Ogtong on 2/13/22.
//

import Foundation

class AddWeatherViewModel {
    
    func addWeather(for city: String, completion: @escaping (WeatherViewModel) -> Void) {
        
        let weatherURL = Constants.Urls.urlForWeatherByCity(city: city)
        
        let weatherResource = Resource<WeatherResponse>(url: weatherURL) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse
        }
        
        WebService().load(resource: weatherResource) { result in
            
            if let weatherResponse = result {
                
                let vm = WeatherViewModel(weather: weatherResponse)
                
                completion(vm)
                
            }
            
        }
        
    }
    
}
