//
//  RegistrationViewController.swift
//  braincodeSwift
//
//  Created by ewa on 11.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTextFields()
    }
    
    func setUpTextFields() {
        self.nameTextField.layer.backgroundColor = UIColor.whiteColor().CGColor
        self.lastNameTextField.layer.backgroundColor = UIColor.whiteColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
