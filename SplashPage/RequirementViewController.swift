//
//  RequirementViewController.swift
//  SplashPage
//
//  Created by SER-YCL7 on 7/25/19.
//  Copyright © 2019 CSApps. All rights reserved.
//

import UIKit

class RequirementViewController: UIViewController {
// find instant loan requirement screen
    //loan amt begin
    
    @IBOutlet var UILabel: UILabel!
    let step: Float = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func UISlider(_ sender: UISlider) {
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
        UILabel.text = "$\(Int(roundedValue))"
    }
    //loan amt end

    //pay back begin
    @IBOutlet var UILabel2: UILabel!
    let step2: Float = 7
    
    @IBAction func UISlider2(_ sender: UISlider) {
        let roundedValue = round(sender.value / step2) * step2
        sender.value = roundedValue
        UILabel2.text = "\(Int(roundedValue)) days"
    }
    //pay back end
//close entire code below
}
