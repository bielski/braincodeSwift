//
//  WebViewController.swift
//  braincodeSwift
//
//  Created by ewa on 07.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    var websiteUrl = NSURL(string: "http://www.kt.agh.edu.pl")

    override func viewDidLoad() {
        super.viewDidLoad()
        var request = NSURLRequest(URL: self.websiteUrl!)
        self.webView.loadRequest(request)

        self.webView.accessibilityLabel = "webView"
        self.navigationItem.backBarButtonItem?.accessibilityLabel = "Back"
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
