//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Matthew Ogtong on 2/5/22.
//

import Foundation
import UIKit


class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        
        cityNameLabel.text = vm.city
        
        temperatureLabel.text = "\(vm.temperature)"
        
    }
    
}
