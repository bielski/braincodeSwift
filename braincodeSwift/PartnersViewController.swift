//
//  PartnersViewController.swift
//  braincodeSwift
//
//  Created by ewa on 07.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit

class PartnersViewController: UIViewController {
    
    @IBOutlet var cracow: UIImageView!
    @IBOutlet var poznan: UIImageView!
    @IBOutlet var torun: UIImageView!
    @IBOutlet var cracowAgh: UIImageView!
    @IBOutlet var warsaw: UIImageView!
    
    var urlAddress = NSURL()
    var dict = [
        "cracow" : "http://www.kt.agh.edu.pl",
        "poznan" : "https://amu.edu.pl/",
        "torun" : "http://www.umk.pl/",
        "warsaw" : "http://www.mimuw.edu.pl/",
        "cracowAgh" : "http://www.agh.edu.pl/"
        ]
    
    @IBAction func openWebView(sender: UITapGestureRecognizer) {
        var url = dict[sender.view?.accessibilityLabel as String!]
        self.urlAddress = NSURL(string: url!)!
        var request = NSURLRequest(URL: self.urlAddress)
        
        var webViewController = self.storyboard?.instantiateViewControllerWithIdentifier("webView") as WebViewController
        webViewController.urlRequest = request
        self.navigationController?.pushViewController(webViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpAccessiblityLabels()
    }
    
    func setUpAccessiblityLabels() {
        self.cracow.accessibilityLabel = "cracow"
        self.poznan.accessibilityLabel = "poznan"
        self.torun.accessibilityLabel = "torun"
        self.cracowAgh.accessibilityLabel = "cracowAgh"
        self.warsaw.accessibilityLabel = "warsaw"
    }
}