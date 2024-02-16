//
//  MainTableViewController.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 15.02.2024.
//

import UIKit
import SnapKit

class MainTableViewController: UITableViewController {

    private let spotsName = ["Garage", "House", "Bar", "Gym", "Shop"]
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        registerCell()
       
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return spotsName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomMainTableViewCell", for: indexPath)
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomMainTableViewCell", for: indexPath) as? CustomMainTableViewCell else {
            fatalError("Debug: Unable to dequeue CustomMainTableViewCell")
        }
        cell.configure(with: "Car")

        return cell
    }
    //MARK: - Table view delegate

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
   
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

