//
//  Req4ViewController.swift
//  SplashPage
//
//  Created by SER-YCL7 on 7/31/19.
//  Copyright © 2019 CSApps. All rights reserved.
//

import UIKit

class Req4ViewController: UIViewController {
// create regular loan requirement screen
    //loan amt begin
    
    @IBOutlet var UILabel: UILabel!
    let step: Float = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func UISlider(_ sender: UISlider) {
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
        UILabel.text = "$\(Int(roundedValue))"
    }
    //loan amt end
    
    //earn back begin
    @IBOutlet var UILabel2: UILabel!
    let step2: Float = 1
    
    @IBAction func UISlider2(_ sender: UISlider) {
        let roundedValue = round(sender.value / step2) * step2
        sender.value = roundedValue
        UILabel2.text = "\(Int(roundedValue))% APR"
    }
    //earn back end
    
    //want back begin
    @IBOutlet var UILabel3: UILabel!
    let step3: Float = 7
    
    @IBAction func UISlider3(_ sender: UISlider) {
        let roundedValue = round(sender.value / step3) * step3
        sender.value = roundedValue
        UILabel3.text = "\(Int(roundedValue)) days"
    }
    //want back end
//close entire code below
}
