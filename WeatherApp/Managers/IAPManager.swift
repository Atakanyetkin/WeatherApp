//
//  IAPManager.swift
//  WeatherApp
//
//  Created by atakan yetkin on 15.11.2023.
//

import Foundation
import RevenueCat

final class IAPManager {
    static let shared = IAPManager()
    
    private init() {}
    
    func isSubscribed(completion: @escaping (Bool) -> Void) {
        Purchases.shared.getCustomerInfo { info, error in
            guard let subscriptions = info?.activeSubscriptions else { return }
              print("\n\n\n\(subscriptions)")
            completion(!subscriptions.isEmpty)
        }
    }
}
