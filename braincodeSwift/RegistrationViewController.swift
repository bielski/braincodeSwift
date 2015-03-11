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
        self.setTextFields()
    }
    
    func setTextFields() {
        self.nameTextField.layer.backgroundColor = UIColor.whiteColor().CGColor
        self.lastNameTextField.layer.backgroundColor = UIColor.whiteColor().CGColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
