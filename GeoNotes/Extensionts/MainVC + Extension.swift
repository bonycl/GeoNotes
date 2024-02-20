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
        self.tableView.separatorInset.left = 16
        self.tableView.separatorInset.right = 16
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
//        print("DEBUG :", "Add+ Pressed")
//        let vc = SecondTableViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
        
        print("DEBUG :", "Add+ Pressed")

            let vc = SecondTableViewController()

            let transition = CATransition()
            transition.duration = 0.5
            transition.type = CATransitionType.fade
            self.navigationController?.view.layer.add(transition, forKey: kCATransition)
            
            self.navigationController?.pushViewController(vc, animated: false)
    }
}

