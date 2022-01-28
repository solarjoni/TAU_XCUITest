import Foundation
import XCTest
import EyesXCUI

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    let eyes = Eyes()

    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try? super.setUpWithError()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()
        eyes.apiKey = ProcessInfo.processInfo.environment["APPLITOOLS_API_KEY"]!

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        try? super.tearDownWithError()
        app.terminate()
        
        //End the test
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }
    
    func XCTAsyncAssert( _ element: XCUIElement) {
        let elementExist = element.waitForExistence(timeout: 10)
        if elementExist {
            XCTAssertTrue(element.exists)
        }
    }
}
