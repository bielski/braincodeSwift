//
//  WebViewTestCase.swift
//  braincodeSwift
//
//  Created by Ewa Bielska on 09/03/15.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit

class WebViewTestCase: KIFTestCase {
    var tester : KIFUITestActor {
        get {
            return KIFUITestActor(inFile: __FILE__, atLine: __LINE__, delegate: self)
        }
    }

    override func beforeEach() {
    }

    override func afterEach() {
    }

    func testPartnersImagesShouldAppear() {

        // Wait and tap partners button
        // Wait for partners view
        // Wait for all partners images to appear
    }

    func testWebViewShouldAppear() {

        // Wait and tap partners button
        // Wait for partners view
        // Tap first image and check if web view appears
    }
}
