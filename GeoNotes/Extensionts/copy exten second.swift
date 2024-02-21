////
////  SecondVC + Extension .swift
////  GeoNotes
////
////  Created by Dinar Shakirov on 17.02.2024.
////
//
//import UIKit
//import SnapKit
//
//extension SecondTableViewController {
//    //MARK: - Create UI Components
//    
//    func createCustomImageView() -> UIImageView {
//        let imageView = UIImageView()
//        imageView.contentMode = .center
//        imageView.image = UIImage(named: "Photo")
//        imageView.backgroundColor = .lightGray
//        return imageView
//    }
//    
//    func createFirstLabel() -> UILabel {
//        let label = UILabel()
//        label.text = "Name"
//        label.textAlignment = .left
//        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
//        label.textColor = .black
//        return label
//    }
//    
//    func createFirstTextField() -> UITextField {
//        let textFiled = UITextField()
//        textFiled.placeholder = "type a name"
//        textFiled.textColor = .black
//        textFiled.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
//        textFiled.layer.cornerRadius = 5
//        textFiled.clearButtonMode = .whileEditing
//        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 12,
//                                                        height: textFiled.frame.size.height))
//        textFiled.leftView = paddingView
//        textFiled.leftViewMode = .always
//        
//        textFiled.returnKeyType = .done
//        textFiled.autocorrectionType = .no
//        textFiled.autocapitalizationType = .sentences
//        return textFiled
//    }
//    
//    func createLocationLabel() -> UILabel {
//        let label = UILabel()
//        label.text = "Location"
//        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
//        label.textAlignment = .left
//        label.textColor = .black
//        return label
//    }
//    
//    func createLocationTextField() -> UITextField {
//        let textFiled = UITextField()
//        textFiled.placeholder = "enter or choose location"
//        textFiled.textColor = .black
//        textFiled.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
//        textFiled.layer.cornerRadius = 5
//        textFiled.clipsToBounds = true
//        
//        textFiled.clearButtonMode = .whileEditing
//        textFiled.layer.borderColor = UIColor.black.withAlphaComponent(0.25).cgColor
//
//        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textFiled.frame.size.height))
//        textFiled.leftView = paddingView
//        textFiled.leftViewMode = .always
//        
//        textFiled.returnKeyType = .done
//        textFiled.autocorrectionType = .no
//        textFiled.autocapitalizationType = .sentences
//        return textFiled
//    }
//    
//    func createTypeLabel() -> UILabel {
//        let label = UILabel()
//        label.text = "Type"
//        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
//        label.textAlignment = .left
//        label.textColor = .black
//        return label
//    }
//    
//    func createTypeTextField() -> UITextField {
//        let textFiled = UITextField()
//        textFiled.placeholder = "choose type"
//        
//        textFiled.textColor = .black
//        textFiled.backgroundColor = UIColor.lightGray.withAlphaComponent(0.1)
//        textFiled.layer.cornerRadius = 5
//        textFiled.clipsToBounds = true
//        
//        textFiled.clearButtonMode = .whileEditing
//        textFiled.layer.borderColor = UIColor.black.withAlphaComponent(0.25).cgColor
//
//        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: textFiled.frame.size.height))
//        textFiled.leftView = paddingView
//        textFiled.leftViewMode = .always
//        
//        textFiled.returnKeyType = .done
//        textFiled.autocorrectionType = .no
//        textFiled.autocapitalizationType = .sentences
//        return textFiled
//    }
//    
//    //MARK: - Setup UI
//    func setupUI() {
//        view.backgroundColor = .white
//                
//        customImageView = createCustomImageView()
//        firstLabel = createFirstLabel()
//        firstTextField = createFirstTextField()
//        locationLabel = createLocationLabel()
//        locationTextField = createLocationTextField()
//        typeLabel = createTypeLabel()
//        typeTextField = createTypeTextField()
//        
//        view.addSubview(customImageView)
//        view.addSubview(firstLabel)
//        view.addSubview(firstTextField)
//        view.addSubview(locationLabel)
//        view.addSubview(locationTextField)
//        view.addSubview(typeLabel)
//        view.addSubview(typeTextField)
//        
//        setupDelegates()
//        
//        
//        let safeAreaFrame = view.safeAreaLayoutGuide.layoutFrame
//        print("DEBUG: Safe Area Frame - \(safeAreaFrame)")
//    }
//    
//        //MARK: - Constraints
//        func setupConstraints() {
//            
//            customImageView.snp.makeConstraints { make in
//                make.left.right.equalToSuperview()
//                make.top.equalTo(self.view.safeAreaLayoutGuide)
//                make.height.equalTo(250)
//            }
//            
//            firstLabel.snp.makeConstraints { make in
//                make.left.equalToSuperview().inset(16)
//                make.right.equalToSuperview().inset(16)
//                make.top.equalTo(customImageView.snp.bottom).offset(9)
//                make.height.equalTo(31)
//            }
//            
//            firstTextField.snp.makeConstraints { make in
//                make.left.equalToSuperview().inset(16)
//                make.right.equalToSuperview().inset(16)
//                make.top.equalTo(firstLabel.snp.bottom).offset(9)
//                make.height.equalTo(31)
//            }
//            
//            locationLabel.snp.makeConstraints { make in
//                make.left.equalToSuperview().inset(16)
//                make.right.equalToSuperview().inset(16)
//                make.top.equalTo(firstTextField.snp.bottom).offset(9)
//                make.height.equalTo(31)
//            }
//            
//            locationTextField.snp.makeConstraints { make in
//                make.left.equalToSuperview().inset(16)
//                make.right.equalToSuperview().inset(16)
//                make.top.equalTo(locationLabel.snp.bottom).offset(9)
//                make.height.equalTo(31)
//            }
//            
//            typeLabel.snp.makeConstraints { make in
//                make.left.equalToSuperview().inset(16)
//                make.right.equalToSuperview().inset(16)
//                make.top.equalTo(locationTextField.snp.bottom).offset(9)
//                make.height.equalTo(31)
//            }
//            
//            typeTextField.snp.makeConstraints { make in
//                make.left.equalToSuperview().inset(16)
//                make.right.equalToSuperview().inset(16)
//                make.top.equalTo(typeLabel.snp.bottom).offset(9)
//                make.height.equalTo(31)
////                make.bottom.equalTo(self.view.keyboardLayoutGuide).offset(-20)
//            }
//        }
//
//    
//    func setupNavBarItems() {
//        let saveButton = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(savePressed))
//        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelPressed))
//        
//        navigationItem.rightBarButtonItem = saveButton
//        navigationItem.leftBarButtonItem = cancelButton
//    }
//    
//    @objc private func savePressed() {
//        print("DEBUG :", "Save Pressed")
//    }
//    @objc private func cancelPressed() {
//        print("DEBUG :", "Cancel Pressed")
//        let transition = CATransition()
//        transition.duration = 0.5
//        transition.type = CATransitionType.fade
//        self.navigationController?.view.layer.add(transition, forKey: kCATransition)
//        self.navigationController?.popViewController(animated: false)
//    }
//    
//}
//
//extension SecondTableViewController: UITextFieldDelegate {
//    func setupDelegates() {
//        firstTextField.delegate = self
//        locationTextField.delegate = self
//        typeTextField.delegate = self
//    }
//    
//    func animateViewMoving(up: Bool) {
//        //2
//        let safeAreaFrame = view.safeAreaLayoutGuide.layoutFrame
//        print("DEBUG 2: Safe Area Frame - \(safeAreaFrame)")
//        
//            let movementDistance: CGFloat = 100
//            let movementDuration: TimeInterval = 0.3
//            
//            UIView.animate(withDuration: movementDuration) {
//                if up {
//                    self.view.frame.origin.y -= movementDistance
//                    print("DEBUG: go up")
//                    //3
//                    let safeAreaFrame = self.view.safeAreaLayoutGuide.layoutFrame
//                    print("DEBUG 3: Safe Area Frame - \(safeAreaFrame)")
//                    
//                     } else {
//                         print("DEBUG: go down")
//                         self.view.frame.origin.y = 0
//                     }
//                print("DEBUG: new layout")
//                     self.view.layoutIfNeeded()
//                //4
//                let safeAreaFrame = self.view.safeAreaLayoutGuide.layoutFrame
//                print("DEBUG 4: Safe Area Frame - \(safeAreaFrame)")
//                 }
//        }
//    
//    
//    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        print("DEBUG: Begin Editing")
//        
//            animateViewMoving(up: true)
//        
//    }
//    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        print("DEBUG: END Editing")
//        animateViewMoving(up: false)
//    }
//    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        view.endEditing(true)
//    }
//}
//
