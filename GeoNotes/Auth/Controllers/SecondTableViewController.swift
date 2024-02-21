//
//  SecondTableViewController.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 17.02.2024.
//

import UIKit
import SnapKit

class SecondTableViewController: KeyboardHandlingBaseVC {

    //MARK: - UI Components
    var contentVi: UIView!
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

}

