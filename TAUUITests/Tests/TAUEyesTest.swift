//
//  TAUEyesTest.swift
//  TAUUITests
//
//  Created by Jo Ju on 2022-01-27.
//  Copyright © 2022 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI

class TAUEyesTest: TAUUITestBase {
    
    func testTAUWithEyesXCUI() {
        // Initialize the eyes SDK and set your private API key.
        
        // Start the test.
        eyes.open(withApplicationName: "TAU", testName: "Live Demo of EyesXCUI SDK!")

        // Visual checkpoint #1.
        eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))

        // Click the "Click me!" button.
        XCUIApplication().buttons["enrollButton"].tap()

        // Visual checkpoint #2.
        eyes.checkWindow(withTag: "Please Enter City")

        // End the test.
    }
}
