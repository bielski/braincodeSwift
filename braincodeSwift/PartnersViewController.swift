//
//  PartnersViewController.swift
//  braincodeSwift
//
//  Created by ewa on 07.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit

class PartnersViewController: UIViewController {

    var urlAddress = NSURL(string: "http://www.kt.agh.edu.pl")
    
    @IBOutlet var cracow: UIImageView!
    @IBOutlet var poznan: UIImageView!
    @IBOutlet var torun: UIImageView!
    @IBOutlet var cracowAgh: UIImageView!
    @IBOutlet var warsaw: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cracow.accessibilityLabel = "cracow"
        self.poznan.accessibilityLabel = "poznan"
        self.torun.accessibilityLabel = "torun"
        self.cracowAgh.accessibilityLabel = "cracowAgh"
        self.warsaw.accessibilityLabel = "warsaw"
    }

    @IBAction func setUrlForCracow(sender: UITapGestureRecognizer) {
        self.urlAddress = NSURL(string: "http://www.kt.agh.edu.pl")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if segue.identifier == "web" {
            let viewController:WebViewController = segue.destinationViewController as WebViewController
            viewController.websiteUrl = self.urlAddress
        }
    }
}
