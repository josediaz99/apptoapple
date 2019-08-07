//
//  ViewController2.swift
//  SplashPage
//
//  Created by SER-YCL7 on 7/31/19.
//  Copyright © 2019 CSApps. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {
///One-Time Password begin
    //outlets begin
    @IBOutlet var txtOTP1: UITextField!
    
    @IBOutlet var txtOTP2: UITextField!
    
    @IBOutlet var txtOTP3: UITextField!
    
    @IBOutlet var txtOTP4: UITextField!
    //outlets end
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        txtOTP1.backgroundColor = UIColor.clear
        txtOTP2.backgroundColor = UIColor.clear
        txtOTP3.backgroundColor = UIColor.clear
        txtOTP4.backgroundColor = UIColor.clear
        
        addBottomBorderTo(textField: txtOTP1)
        addBottomBorderTo(textField: txtOTP2)
        addBottomBorderTo(textField: txtOTP3)
        addBottomBorderTo(textField: txtOTP4)
        
        txtOTP1.delegate = self
        txtOTP2.delegate = self
        txtOTP3.delegate = self
        txtOTP4.delegate = self
        
        //urcode
        txtOTP1.becomeFirstResponder()
    }
    
    func addBottomBorderTo(textField:UITextField) {
        let layer = CALayer()
        layer.backgroundColor = UIColor.gray.cgColor
        layer.frame = CGRect(x: 0.0, y: textField.frame.size.height - 2.0, width: textField.frame.size.width, height: 2.0)
        textField.layer.addSublayer(layer)
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if ((textField.text?.count)! < 1 ) && (string.count > 0) {
            if textField == txtOTP1 {
                txtOTP2.becomeFirstResponder()
            }
            
            if textField == txtOTP2 {
                txtOTP3.becomeFirstResponder()
            }
            
            if textField == txtOTP3 {
                txtOTP4.becomeFirstResponder()
            }
            
            if textField == txtOTP4 {
                txtOTP4.resignFirstResponder()
            }
            
            textField.text = string
            return false
        } else if ((textField.text?.count)! >= 1) && (string.count == 0) {
            if textField == txtOTP2 {
                txtOTP1.becomeFirstResponder()
            }
            if textField == txtOTP3 {
                txtOTP2.becomeFirstResponder()
            }
            if textField == txtOTP4 {
                txtOTP3.becomeFirstResponder()
            }
            if textField == txtOTP1 {
                txtOTP1.resignFirstResponder()
            }
            
            textField.text = ""
            return false
        } else if (textField.text?.count)! >= 1 {
            textField.text = string
            return false
        }
        
        return true
    }
///One-Time Password end
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
