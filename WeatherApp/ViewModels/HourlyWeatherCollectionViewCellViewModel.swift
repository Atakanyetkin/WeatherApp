//
//  HourlyWeatherCollectionViewCellViewModel.swift
//  WeatherApp
//
//  Created by atakan yetkin on 20.11.2023.
//

import Foundation
import WeatherKit

struct HourlyWeatherCollectionViewCellViewModel {
    private let model: HourWeather
   
    init(model: HourWeather) {
        self.model = model
    }
    
    public var iconName: String {
        return model.symbolName
    }
    
    public var temparature: String {
        return "\(Int(model.temperature.converted(to: .fahrenheit).value))f"
    }
    
    public var hour: String {
        let hour = Calendar.current.component(.hour, from: model.date)
        return "\(hour):00"
      
    }
    
}
