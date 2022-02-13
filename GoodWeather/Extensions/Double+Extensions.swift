//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Matthew Ogtong on 2/13/22.
//

import Foundation

extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
    
}
