//
//  SettingsViewController.swift
//  WeatherApp
//
//  Created by atakan yetkin on 15.11.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    private let primaryView: SettingsView = {
        let view = SettingsView()
        let viewModel = SettingsViewViewModel(options: SettingOption.allCases)
        view.configure(with: viewModel)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primaryView.delegate = self
        setUpView()
    }
       
        
        private func setUpView(){
            view.backgroundColor = .systemBackground
           
            view.addSubview(primaryView)
            NSLayoutConstraint.activate([
                primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
                primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
                primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                                    
            ])
        }
    }

extension SettingsViewController: SettingsViewDelegate {
    func settingsView(_ settingsView: SettingsView, didTap option: SettingOption) {
        switch option {
            case .upgrade:
                break
            case .PrivacyPolicy:
                break
            case .terms:
                break
            case .contract:
                break
            case .getHelp:
                break
            case .rateApp:
                break
        }
    }
}

