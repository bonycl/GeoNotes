//
//  SecondTableViewController.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 17.02.2024.
//

import UIKit

class SecondTableViewController: UIViewController {
    
    //MARK: - UI Components
    var scrollView: UIScrollView!
    var customImageView: UIImageView!
    var firstLabel: UILabel!
    var firstTextField: UITextField!
    var locationLabel: UILabel!
    var locationTextField: UITextField!
    var typeLabel: UILabel!
    var typeTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBarItems()
        setupUI()
        setupConstraints()
        
    }

    
    // MARK: - Navigation
   

//    func configureImage(with imageName: String) {
//        customImageView.image = UIImage(named: imageName)
//    }
    
    
}
