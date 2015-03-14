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

    func validateForm() -> String {
        var error = String()

        if (self.nameTextField.text.isEmpty || self.lastNameTextField.text.isEmpty) {
            error = "Wypełnij wszystkie pola"
        }
        return error
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        var errorMessage = self.validateForm() as String

        if (!errorMessage.isEmpty) {
            UIAlertView(title: "Info", message: errorMessage, delegate: nil, cancelButtonTitle: "OK").show()
        } else {
            UIAlertView(title: "Info", message: "Zarejestrowałeś się poprawnie", delegate: nil, cancelButtonTitle: "OK").show()
            self.navigationController?.popToRootViewControllerAnimated(true)
        }
    }

}
