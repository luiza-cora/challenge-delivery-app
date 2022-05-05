//
//  MenuItemView.swift
//  DeliveryAppChallenge
//
//  Created by Rodrigo Borges on 03/11/21.
//

import UIKit

final class MenuItemView: UIView, UITableViewDelegate, UITableViewDataSource, ViewConfiguration {
 
    private let identifier = MenuItemCell.identifier
    private var listItems: [MenuItemCellConfiguration] = []
    private var listSections: Array<String> = ["Café da manhã", "Almoço", "Jantar"]
    
    lazy var tableView: UITableView = {
        var tableView = UITableView()
        tableView.register(MenuItemCell.self, forCellReuseIdentifier: MenuItemCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuItemCell.identifier, for: indexPath)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return listSections.count
    }
      
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return listSections.description
    }
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupViews()
        tableView.dataSource = self
        tableView.rowHeight = 84
        tableView.separatorColor = UIColor.clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configViews() {
        backgroundColor = .white
    }
    
    func buildViews() {
        addSubview(tableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)])
    }
}
