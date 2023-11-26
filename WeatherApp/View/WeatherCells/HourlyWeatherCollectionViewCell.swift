//
//  HourlyWeatherCollectionViewCell.swift
//  WeatherApp
//
//  Created by atakan yetkin on 20.11.2023.
//

import UIKit

class HourlyWeatherCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "HourlyWeatherCollectionViewCell"
    
    private let tempLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18,weight: .medium)
        return label
    }()
    
    private let timeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    private let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 8
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.secondaryLabel.cgColor
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubview(timeLabel)
        contentView.addSubview(tempLabel)
        contentView.addSubview(icon)
        
        addConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
 
    private  func addConstraint() {

        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            timeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            timeLabel.heightAnchor.constraint(equalToConstant: 40),
            timeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
           
            icon.topAnchor.constraint(equalTo: timeLabel.topAnchor),
            icon.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            icon.heightAnchor.constraint(equalToConstant: 32),
            icon.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            
            tempLabel.topAnchor.constraint(equalTo: icon.bottomAnchor),
            tempLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            timeLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            tempLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        
        ])
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
   
        tempLabel.text = nil
        timeLabel.text = nil
        icon.image = nil
    }
    
  
    
    public func configure(with viewModel: HourlyWeatherCollectionViewCellViewModel) {
        icon.image = UIImage(systemName: viewModel.iconName)
        tempLabel.text = viewModel.temparature
        timeLabel.text = viewModel.hour
    }
}
