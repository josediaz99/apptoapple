//
//  loginViewController.swift
//  SplashPage
//
//  Created by Central States SER 06 on 8/6/19.
//  Copyright © 2019 CSApps. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        
            self.hideKeyboardWhenTappedAround()
        }
    
    @IBAction func logInPressed(_ sender: Any) {
        var user = Users()
        let userName : String = usernameTextField.text!
        let password : String = passwordTextField.text!
        user.setCurrUser(Username: userName, P: password)
        
    }
    
}
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
