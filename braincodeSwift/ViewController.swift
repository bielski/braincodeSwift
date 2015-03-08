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
        
        self.setupButtons(self.registrationButton)
        self.setupButtons(self.localizationButton)
        self.setupButtons(self.partnersButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupButtons(button: UIButton) {
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor.lightGrayColor().CGColor
        button.layer.setNeedsDisplay()
    }
}

