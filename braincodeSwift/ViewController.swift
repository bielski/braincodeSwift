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
        self.setButtons()
        self.setAccessibilityLabels()
    }

    func setButtons() {
        self.setBorderForButtonWithColor(self.registrationButton, color: UIColor.lightBlue())
        self.setBorderForButtonWithColor(self.localizationButton, color: UIColor.blue())
        self.setBorderForButtonWithColor(self.partnersButton, color: UIColor.darkBlue())
    }

    func setBorderForButtonWithColor(button: UIButton, color: UIColor) {
        button.layer.borderWidth = 1.0
        button.layer.borderColor = color.CGColor
        button.layer.setNeedsDisplay()
    }
    
    func setAccessibilityLabels() {
        self.localizationButton.accessibilityLabel = "localizationButton"
        self.partnersButton.accessibilityLabel = "partnersButton"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

