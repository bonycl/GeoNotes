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
        tableView.rowHeight = 50
        navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
    }
    
    func registerCell() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
        
        //set global or local
        //self.navigationController?.addCustomBottomLine(color: UIColor.black, height: 1)
    }

