//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Matthew Ogtong on 2/13/22.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
