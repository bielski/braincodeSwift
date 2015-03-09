//
//  MapViewTestCase.swift
//  braincodeSwift
//
//  Created by Ewa Bielska on 09/03/15.
//  Copyright (c) 2015 codework. All rights reserved.
//

import UIKit

class MapViewTestCase: KIFTestCase {
    var tester : KIFUITestActor {
        get {
            return KIFUITestActor(inFile: __FILE__, atLine: __LINE__, delegate: self)
        }
    }

    override func beforeEach() {
    }

    override func afterEach() {
    }

    func testMapViewAnnotation() {
        // Wait and tap localization button
        // Wait for map view
        // Wait and tap annotation mark
    }

    func testMapViewSwipe() {
        // Wait and tap localization button
        // Wait for map view
        // Swipe map to check proper user interaction
    }
}