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

        var errorMessage = String()

        if (self.nameTextField.text.isEmpty ) {
            errorMessage = "Proszę wypełnij wszystkie pola"
        } else if (self.lastNameTextField.text.isEmpty) {
            errorMessage = "Proszę wypełnij wszystkie pola"
        }

    return errorMessage
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        var errorMessage = self.validateForm()

        if (!errorMessage.isEmpty) {
            UIAlertView(title: "Info", message: errorMessage, delegate: nil, cancelButtonTitle: "OK").show()
        } else {
            UIAlertView(title: "Info", message: "Zostałeś poprawnie zarejestrowany", delegate: nil, cancelButtonTitle: "OK").show()
            self.navigationController?.popToRootViewControllerAnimated(true)
            self.clearTextFields()
        }
    }

    func clearTextFields() {
        self.nameTextField.text = "";
        self.lastNameTextField.text = "";
    }
}
