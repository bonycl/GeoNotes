//
//  SecondVC + Extension .swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 17.02.2024.
//

import UIKit
import SnapKit

extension SecondTableViewController {
    //MARK: - Create UI Components
    
    func createContentView() -> UIView {
        let contentView = UIView()
        contentView.backgroundColor = .white
        return contentView
    }
    
    func createCustomImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.contentMode = .center
        imageView.image = UIImage(named: "Photo")
        imageView.backgroundColor = .lightGray
        return imageView
    }

    func createFirstLabel() -> UILabel {
        let label = UILabel()
        label.text = "Name"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .black
        return label
    }

    func createFirstTextField() -> UITextField {
        let textFiled = UITextField()
        textFiled.placeholder = "type a name"
        textFiled.textColor = .black
        textFiled.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
        textFiled.layer.cornerRadius = 5
        textFiled.clearButtonMode = .whileEditing
        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 12,
                                                        height: textFiled.frame.size.height))
        textFiled.leftView = paddingView
        textFiled.leftViewMode = .always

        textFiled.returnKeyType = .done
        textFiled.autocorrectionType = .no
        textFiled.autocapitalizationType = .sentences
        
        textFiled.inputAccessoryView = UIView()
        textFiled.inputAccessoryView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 1))
        return textFiled
    }

    func createLocationLabel() -> UILabel {
        let label = UILabel()
        label.text = "Location"
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textAlignment = .left
        label.textColor = .black
        return label
    }

    func createLocationTextField() -> UITextField {
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
        textFiled.autocapitalizationType = .sentences
        
        textFiled.inputAccessoryView = UIView()
        textFiled.inputAccessoryView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 1))
        return textFiled
    }

    func createTypeLabel() -> UILabel {
        let label = UILabel()
        label.text = "Type"
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textAlignment = .left
        label.textColor = .black
        return label
    }

    func createTypeTextField() -> UITextField {
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
        textFiled.autocapitalizationType = .sentences
        
        textFiled.inputAccessoryView = UIView()
        textFiled.inputAccessoryView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 1))
        
        return textFiled
    }

    //MARK: - Setup UI
    func setupUI() {
        
        view.backgroundColor = .white
        
        contentVi = createContentView()
        customImageView = createCustomImageView()
        firstLabel = createFirstLabel()
        firstTextField = createFirstTextField()
        locationLabel = createLocationLabel()
        locationTextField = createLocationTextField()
        typeLabel = createTypeLabel()
        typeTextField = createTypeTextField()

        view.addSubview(scrollView)
        scrollView.addSubview(contentVi)
        contentVi.addSubview(customImageView)
        contentVi.addSubview(firstLabel)
        contentVi.addSubview(firstLabel)
        contentVi.addSubview(firstTextField)
        contentVi.addSubview(locationLabel)
        contentVi.addSubview(locationTextField)
        contentVi.addSubview(typeLabel)
        contentVi.addSubview(typeTextField)

//        setupDelegates()


        let safeAreaFrame = view.safeAreaLayoutGuide.layoutFrame
        print("DEBUG: Safe Area Frame - \(safeAreaFrame)")
    }

    
        //MARK: - Constraints
        func setupConstraints() {
            scrollView.snp.makeConstraints { make in
                make.edges.equalTo(view.safeAreaLayoutGuide)
            }
            
            contentVi.snp.makeConstraints { make in
                make.edges.equalTo(scrollView)
                make.width.equalTo(scrollView)
                make.height.equalTo(scrollView).priority(.low)
            }

            customImageView.snp.makeConstraints { make in
                make.leading.equalToSuperview()
                make.trailing.equalToSuperview()
                make.top.equalTo(contentVi.snp.top)
//                make.top.equalTo(self.view.safeAreaLayoutGuide)
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
//                make.bottom.lessThanOrEqualTo(self.view.keyboardLayoutGuide).offset(50)
            }
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
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.fade
        self.navigationController?.view.layer.add(transition, forKey: kCATransition)
        self.navigationController?.popViewController(animated: false)
    }

}
//
//extension SecondTableViewController: UITextFieldDelegate {
//    func setupDelegates() {
//        firstTextField.delegate = self
//        locationTextField.delegate = self
//        typeTextField.delegate = self
//        
//    }
//
//    func animateViewMoving(up: Bool) {
//        }
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        print("DEBUG: Begin Editing")
//
//    }
//
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        print("DEBUG: END Editing")
//    
//    }
//
////    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
////        view.endEditing(true)
////    }
//}


