//
//  BraincodeTestCase.swift
//  braincodeSwift
//
//  Created by ewa on 07.03.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit

class MyPreciousTests: KIFTestCase {
    var tester : KIFUITestActor {
        get {
            return KIFUITestActor(inFile: __FILE__, atLine: __LINE__, delegate: self)
        }
    }
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testLabel() {
        tester.waitForViewWithAccessibilityLabel("Label")
    }
    
    // Test checking whether map view and annotation appeared
    // Test checking whether map view can be swiped
    // Test checking partners logos and switching to webview
    
}