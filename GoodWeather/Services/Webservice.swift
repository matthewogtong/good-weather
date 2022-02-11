//
//  Webservice.swift
//  GoodWeather
//
//  Created by Matthew Ogtong on 2/8/22.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

final class Webservice {
    
    
}
