//
//  MainTableViewController.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 15.02.2024.
//

import UIKit

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = spotsName[indexPath.row]
        content.textProperties.numberOfLines = 2
        content.textProperties.color = .black
        content.image = UIImage(named: "House")
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.backgroundColor = .white
        cell.contentConfiguration = content

        return cell
    }
   
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    
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

