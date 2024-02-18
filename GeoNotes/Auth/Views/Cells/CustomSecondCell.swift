//
//  CustomSecondCell.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 18.02.2024.
//

import UIKit
import SnapKit

class CustomSecondCell: UITableViewCell {
    
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
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    private let firstTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.placeholder = "type a name"
        textFiled.textColor = .black
//        textFiled.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        textFiled.layer.cornerRadius = 8
        textFiled.clipsToBounds = true
        return textFiled
    }()
    
    private let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "Location"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    private let locationTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.placeholder = "enter or choose location"
        textFiled.textColor = .black
        return textFiled
    }()
    
    private let typeLabel: UILabel = {
        let label = UILabel()
        label.text = "Type"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()
    
    private let typeTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.placeholder = "choose type"
        textFiled.textColor = .black
        return textFiled
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureImage(with imageName: String) {
        customImageView.image = UIImage(named: imageName)
 
    }
    
    func setupUI() {
        self.backgroundColor = .clear
        self.addSubview(customImageView)
        self.addSubview(firstLabel)
        self.addSubview(firstTextField)
        self.addSubview(locationLabel)
        self.addSubview(locationTextField)
        self.addSubview(typeLabel)
        self.addSubview(typeTextField)
        
        //MARK: - Constraints
        
        customImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalTo(250)
        }
        
        firstLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalTo(safeAreaLayoutGuide).inset(-16)
            make.top.equalTo(customImageView.snp.bottom).offset(9)
            make.height.equalTo(21)
        }
        
        firstTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalTo(safeAreaLayoutGuide).inset(-16)
            make.top.equalTo(firstLabel.snp.bottom).offset(9)
            make.height.equalTo(21)
        }
        
        locationLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalTo(safeAreaLayoutGuide).inset(-16)
            make.top.equalTo(firstTextField.snp.bottom).offset(9)
            make.height.equalTo(18)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalTo(safeAreaLayoutGuide).inset(-16)
            make.top.equalTo(locationLabel.snp.bottom).offset(9)
            make.height.equalTo(18)
        }
        
        typeLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalTo(safeAreaLayoutGuide).inset(-16)
            make.top.equalTo(locationTextField.snp.bottom).offset(9)
            make.height.equalTo(18)

        }
        
        typeTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.right.equalTo(safeAreaLayoutGuide).inset(-16)
            make.top.equalTo(typeLabel.snp.bottom).offset(9)
            make.height.equalTo(18)

        }
        
    }
}
