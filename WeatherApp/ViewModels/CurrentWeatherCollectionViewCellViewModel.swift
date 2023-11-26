//
//  CurrentWeatherCollectionViewCellViewModel.swift
//  WeatherApp
//
//  Created by atakan yetkin on 20.11.2023.
//

import WeatherKit
import Foundation

struct CurrentWeatherCollectionViewCellViewModel {
    private let model: CurrentWeather
    
    init(model: CurrentWeather) {
        self.model = model
    }
    public var condition: String {
        return model.condition.description
    }
    
    public var temperature: String {
        return "\(Int(model.temperature.converted(to: .fahrenheit).value))f"
    }
    public var iconName: String {
        return model.symbolName
    }
}
