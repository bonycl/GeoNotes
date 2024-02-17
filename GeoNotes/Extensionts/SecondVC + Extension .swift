//
//  SecondVC + Extension .swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 17.02.2024.
//

import UIKit
import SnapKit

extension SecondTableViewController {
    
    func setupUI() {
        
        view?.backgroundColor = .white
        title = "Add a new spot"
    }
    
    func setupNavBarItems() {
        let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(savePressed))
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelPressed))
        
        navigationItem.rightBarButtonItem = saveButton
        navigationItem.leftBarButtonItem = cancelButton
    }
    
    @objc private func savePressed() {
        print("DEBUG :", "Save Pressed")
    
    }
    @objc private func cancelPressed() {
        print("DEBUG :", "Cancel Pressed")
        navigationController?.popViewController(animated: true)
    }
}
