//
//  CurrentWeatherViewModel.swift
//  WeatherApp
//
//  Created by atakan yetkin on 20.11.2023.
//

import Foundation

enum WeatherViewModel {
    case current(viewModel: CurrentWeatherCollectionViewCellViewModel)
    case hourly(viewModels: [HourlyWeatherCollectionViewCellViewModel])
    case daily(viewModels: [DailyWeatherCollectionViewCellViewModel])
}
