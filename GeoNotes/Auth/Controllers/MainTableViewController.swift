//
//  MainTableViewController.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 15.02.2024.
//

import UIKit
import SnapKit

class MainTableViewController: UITableViewController {

    private let places = Place.getPalces()

    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupNavBarItem()
        registerCell()
       
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomMainTableViewCell", for: indexPath) as? CustomMainTableViewCell else {
            fatalError("Debug: Unable to dequeue CustomMainTableViewCell")
        }
        cell.configureImage(with: places[indexPath.row].image)
        cell.firstLabel.text = places[indexPath.row].name
        cell.secondLabel.text = places[indexPath.row].location
        cell.thirdLabel.text = places[indexPath.row].type

        return cell 
    }
    //MARK: - Table view delegate

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
   
    
    
    
    // MARK: - Navigation

    
}

