//
//  loginViewController.swift
//  SplashPage
//
//  Created by Central States SER 06 on 8/6/19.
//  Copyright © 2019 CSApps. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
      
            self.hideKeyboardWhenTappedAround()
        }    }
    // Put this piece of code anywhere you like
    extension UIViewController {
        func hideKeyboardWhenTappedAround() {
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
        }
        
        @objc func dismissKeyboard() {
            view.endEditing(true)
        }
    }
