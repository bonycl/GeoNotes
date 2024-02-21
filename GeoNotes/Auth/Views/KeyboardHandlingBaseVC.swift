//
//  KeyboardHandlingBaseVC.swift
//  GeoNotes
//
//  Created by Dinar Shakirov on 21.02.2024.
//
import UIKit

class KeyboardHandlingBaseVC: UIViewController {

    var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView = UIScrollView()
        view.addSubview(scrollView)

        
        scrollView.alwaysBounceVertical = true
        scrollView.contentInsetAdjustmentBehavior = .automatic


        subscribeToNotification(UIResponder.keyboardWillShowNotification, selector: #selector(keyboardWillShowOrHide))
        subscribeToNotification(UIResponder.keyboardWillHideNotification, selector: #selector(keyboardWillShowOrHide))

        initializeHideKeyboard()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        unsubscribeFromAllNotifications()
    }

    private func subscribeToNotification(_ notification: NSNotification.Name, selector: Selector) {
        NotificationCenter.default.addObserver(self, selector: selector, name: notification, object: nil)
    }

    private func unsubscribeFromAllNotifications() {
        NotificationCenter.default.removeObserver(self)
    }

    private func initializeHideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissMyKeyboard))
        
        scrollView.addGestureRecognizer(tap)
    }

    @objc private func dismissMyKeyboard() {
        print("end edit")
        view.endEditing(true)
    }

    @objc private func keyboardWillShowOrHide(notification: NSNotification) {
        print("DEBUG: Keyboard will show or hide")
        if let scrollView = scrollView, let userInfo = notification.userInfo, let endValue = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue, let durationValue = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? NSNumber, let curveValue = userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] as? NSNumber {
            
            let endRect = view.convert(endValue.cgRectValue, from: view.window)
            //setup space btwn kwbrd & textField 
            let keyboardOverlap = scrollView.frame.maxY - endRect.origin.y + 10
            
            scrollView.contentInset.bottom = keyboardOverlap
            
            if #available(iOS 13.0, *) {
                scrollView.verticalScrollIndicatorInsets.bottom = keyboardOverlap
            } else {
                scrollView.scrollIndicatorInsets.bottom = keyboardOverlap
            }
            
            let duration = durationValue.doubleValue
            let options = UIView.AnimationOptions(rawValue: UInt(curveValue.uintValue << 16))
            UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
    }
}
