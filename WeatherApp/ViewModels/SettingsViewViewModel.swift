//
//  SettingsViewViewModel.swift
//  WeatherApp
//
//  Created by atakan yetkin on 15.11.2023.
//

import Foundation

struct SettingsViewViewModel {
    let options: [SettingOption]
}

enum SettingOption: CaseIterable {
    case upgrade
    case PrivacyPolicy
    case terms
    case contract
    case getHelp
    case rateApp
    
    var title: String {
        switch self {
            case .upgrade:
                return "Upgrade to Pro"
            case .PrivacyPolicy:
                return "Privacy Policy"
            case .terms:
                return "Term of Use"
            case .contract:
                return "Contact Us"
            case .getHelp:
                return "Get Help"
            case .rateApp:
                return "Rate App!"
        }
    }
}
