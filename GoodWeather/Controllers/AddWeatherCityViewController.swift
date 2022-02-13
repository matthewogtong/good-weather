//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Matthew Ogtong on 2/3/22.
//

import Foundation
import UIKit

class AddWeatherCityTableViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed() {
        
        if let city = cityNameTextField.text {
            
            guard let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=e902673bb052b9dca3cf1e6308d3ceb7") else { return }
            
            let weatherResource = Resource<Any>(url: weatherURL) { data in
                return data
            }
            
            WebService().load(resource: weatherResource) { result in
                
            }
            
        }
        
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
}
