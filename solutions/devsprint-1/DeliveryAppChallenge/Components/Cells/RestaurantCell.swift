//
//  RestaurantCell.swift
//  DeliveryAppChallenge
//
//  Created by Edson Neto on 04/11/21.
//

import UIKit

class RestaurantCell: UITableViewCell{
    static let identifier = "RestaurantCellIdentifier"
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let restaurantLogo: UIImageView = {
        let logoImageView = UIImageView()
        logoImageView.image = #imageLiteral(resourceName: "restaurant-logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.layer.cornerRadius = 23
        logoImageView.clipsToBounds = true
        return logoImageView
    }()
    
    let restaurantNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let restaurantTypeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .secondaryLabel
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
}

extension RestaurantCell: ViewCode{
    
    func setupComponents() {
        self.accessoryType = .disclosureIndicator
        
        contentView.addSubview(restaurantLogo)
        contentView.addSubview(restaurantNameLabel)
        contentView.addSubview(restaurantTypeLabel)
        
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 60),
            
            restaurantLogo.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            restaurantLogo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            restaurantLogo.widthAnchor.constraint(equalToConstant: 45),
            restaurantLogo.heightAnchor.constraint(equalToConstant: 45),
            
            restaurantNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            restaurantNameLabel.leadingAnchor.constraint(equalTo: restaurantLogo.trailingAnchor, constant: 10),
            restaurantNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            restaurantTypeLabel.topAnchor.constraint(equalTo: restaurantNameLabel.bottomAnchor),
            restaurantTypeLabel.leadingAnchor.constraint(equalTo: restaurantNameLabel.leadingAnchor),
            
            
        ])
    }
    
}
