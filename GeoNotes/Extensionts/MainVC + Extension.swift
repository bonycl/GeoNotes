//
//  MainTableVC + Extension.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 16.02.2024.
//

import UIKit
import SnapKit

extension MainTableViewController {
    
    func setupUI() {
        
        self.view.backgroundColor = .white
        title = "Spots & Notes"
        
     
    }
    
    func setupNavBarItem() {
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonPressed))
        navigationItem.rightBarButtonItem = addButton
    }
    
    func registerCell() {
        tableView.register(CustomMainTableViewCell.self, forCellReuseIdentifier: "CustomMainTableViewCell")
    }
    
    @objc private func addButtonPressed() {
        print("DEBUG :", "Add button Pressed")
        let vc = SecondTableViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

