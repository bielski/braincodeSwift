//
//  ViewController.swift
//  braincodeSwift
//
//  Created by ewa on 07.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var registrationButton: UIButton!
    @IBOutlet var localizationButton: UIButton!
    @IBOutlet var partnersButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpButtons()
        self.setUpAccessibilityLabels()
    }

    func setUpButtons() {
        self.setUpBorderForButtonWithColor(self.registrationButton, color: UIColor.lightBlue())
        self.setUpBorderForButtonWithColor(self.localizationButton, color: UIColor.blue())
        self.setUpBorderForButtonWithColor(self.partnersButton, color: UIColor.darkBlue())
    }

    func setUpBorderForButtonWithColor(button: UIButton, color: UIColor) {
        button.layer.borderWidth = 1.0
        button.layer.borderColor = color.CGColor
        button.layer.setNeedsDisplay()
    }
    
    func setUpAccessibilityLabels() {
        self.localizationButton.accessibilityLabel = "localizationButton"
        self.partnersButton.accessibilityLabel = "partnersButton"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

