//
//  mainTableViewCell.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 15.02.2024.
//

import UIKit
import SnapKit

class CustomMainTableViewCell: UITableViewCell {
    
    let customImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "photo.circle.fill")
        return imageView
    }()
    
     let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
    
     let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "Location"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()
    
     let thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "Type"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .black
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configureImage(with imageName: String) {
        customImageView.image = UIImage(named: imageName)
 
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
                customImageView.layer.cornerRadius = customImageView.frame.size.height / 2
                customImageView.layer.masksToBounds = true
    }
    //MARK: - Setup UI
    func setupUI() {
        self.backgroundColor = .clear
        self.addSubview(customImageView)
        self.addSubview(firstLabel)
        self.addSubview(secondLabel)
        self.addSubview(thirdLabel)
        
        
        //MARK: - Constraints
        customImageView.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(15)
            make.centerY.equalToSuperview()
            make.height.width.equalTo(65)
        }
        
        firstLabel.snp.makeConstraints { make in
            make.left.equalTo(customImageView.snp.right).offset(15)
            make.right.equalTo(safeAreaLayoutGuide).inset(-16)
            make.top.equalToSuperview().inset(9)
            make.height.equalTo(21)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.left.equalTo(customImageView.snp.right).offset(15)
            make.right.equalTo(safeAreaLayoutGuide).inset(-16)
            make.centerY.equalToSuperview().offset(3)
            make.height.equalTo(18)
        }
        
        thirdLabel.snp.makeConstraints { make in
            make.left.equalTo(customImageView.snp.right).offset(15)
            make.right.equalTo(safeAreaLayoutGuide).inset(-16)
            make.bottom.equalToSuperview().inset(8)
            make.height.equalTo(18)
        }
    }
}
