//
//  SecondTableViewController.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 17.02.2024.
//

import UIKit

class SecondTableViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        setupNavBarItems()
    }

    
    // MARK: - Navigation

    private let customImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .center
        imageView.image = UIImage(named: "Photo")
        imageView.backgroundColor = .lightGray
        return imageView
    }()
    
    private let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
    
    private let firstTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.placeholder = "type a name"
        textFiled.textColor = .black
        textFiled.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        textFiled.layer.cornerRadius = 5
        textFiled.clipsToBounds = true
        
        textFiled.clearButtonMode = .whileEditing
        textFiled.layer.borderColor = UIColor.black.withAlphaComponent(0.25).cgColor

        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textFiled.frame.size.height))
        textFiled.leftView = paddingView
        textFiled.leftViewMode = .always
        
        textFiled.returnKeyType = .done
        textFiled.autocorrectionType = .no
        textFiled.autocapitalizationType = .none
        return textFiled
    }()
    
    private let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "Location"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
    
    private let locationTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.placeholder = "enter or choose location"
        textFiled.textColor = .black
        textFiled.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        textFiled.layer.cornerRadius = 5
        textFiled.clipsToBounds = true
        
        textFiled.clearButtonMode = .whileEditing
        textFiled.layer.borderColor = UIColor.black.withAlphaComponent(0.25).cgColor

        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textFiled.frame.size.height))
        textFiled.leftView = paddingView
        textFiled.leftViewMode = .always
        
        textFiled.returnKeyType = .done
        textFiled.autocorrectionType = .no
        textFiled.autocapitalizationType = .none
        return textFiled
    }()
    
    private let typeLabel: UILabel = {
        let label = UILabel()
        label.text = "Type"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
    
    private let typeTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.placeholder = "choose type"
        textFiled.textColor = .black
        textFiled.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        textFiled.layer.cornerRadius = 5
        textFiled.clipsToBounds = true
        
        textFiled.clearButtonMode = .whileEditing
        textFiled.layer.borderColor = UIColor.black.withAlphaComponent(0.25).cgColor

        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textFiled.frame.size.height))
        textFiled.leftView = paddingView
        textFiled.leftViewMode = .always
        
        textFiled.returnKeyType = .done
        textFiled.autocorrectionType = .no
        textFiled.autocapitalizationType = .none
        return textFiled
    }()

    func configureImage(with imageName: String) {
        customImageView.image = UIImage(named: imageName)
    }
    
    func setupUI() {
        view.backgroundColor = .white
        view.addSubview(customImageView)
        view.addSubview(firstLabel)
        view.addSubview(firstTextField)
        view.addSubview(locationLabel)
        view.addSubview(locationTextField)
        view.addSubview(typeLabel)
        view.addSubview(typeTextField)
        
        //MARK: - Constraints
        
        customImageView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(self.view.safeAreaLayoutGuide)
            make.height.equalTo(250)
        }
        
        firstLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(customImageView.snp.bottom).offset(9)
            make.height.equalTo(31)
        }
        
        firstTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(firstLabel.snp.bottom).offset(9)
            make.height.equalTo(31)
        }
        
        locationLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(firstTextField.snp.bottom).offset(9)
            make.height.equalTo(31)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(locationLabel.snp.bottom).offset(9)
            make.height.equalTo(31)
        }
        
        typeLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(locationTextField.snp.bottom).offset(9)
            make.height.equalTo(31)
        }
        
        typeTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalToSuperview().inset(16)
            make.top.equalTo(typeLabel.snp.bottom).offset(9)
            make.height.equalTo(31)
        }
        
    }

}
