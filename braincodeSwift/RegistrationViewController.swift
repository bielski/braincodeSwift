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
    @IBOutlet var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpTextFields()
    }
    
    func setUpTextFields() {
        self.nameTextField.layer.backgroundColor = UIColor.whiteColor().CGColor
        self.lastNameTextField.layer.backgroundColor = UIColor.whiteColor().CGColor
    }
}
