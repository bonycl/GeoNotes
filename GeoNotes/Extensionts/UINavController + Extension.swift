//
//  UINavController + Extension.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 16.02.2024.
//


import UIKit
import SnapKit

extension UINavigationController {
    
    func addCustomBottomLine(color:UIColor,height:Double) {
        //Hiding Default Line and Shadow
        navigationBar.setValue(true, forKey: "hidesShadow")
    
        //Creating custom line
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width:0, height: height))
        lineView.backgroundColor = color
        navigationBar.addSubview(lineView)
            
        //MARK: - Conatraints
        lineView.snp.makeConstraints { make in
            make.width.equalTo(navigationBar)
            make.height.equalTo(height)
            make.top.equalTo(navigationBar.snp.bottom)
            make.centerX.equalTo(navigationBar)
        }
    }
}
