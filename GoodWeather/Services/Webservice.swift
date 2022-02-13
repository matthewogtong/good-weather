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

final class WebService {
    
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> ()) {
        
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            
            print(data)
            
            if let data = data {
                completion(resource.parse(data))
            } else {
                completion(nil)
            }
            
        }.resume()
        
    }
    
}
