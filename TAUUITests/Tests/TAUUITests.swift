import XCTest

class TAUUITests: TAUUITestBase {

    func testAllElementsOnMainScreen() throws {
        // UI tests must launch the application that they test.
        app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Enroll"]/*[[".buttons[\"Enroll\"].staticTexts[\"Enroll\"]",".buttons[\"enrollButton\"].staticTexts[\"Enroll\"]",".staticTexts[\"Enroll\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["Please Enter City"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testThankYouMessage() throws {
        app.staticTexts["welcomeMessage"].tap()
        app.textFields["city"].tap()
        app.textFields["city"].typeText("London")
        //app.textFields["city"].typeText(XCUIKeyboardKey.enter.rawValue)
        app.buttons["enrollButton"].tap()
        //app/*@START_MENU_TOKEN@*/.staticTexts["Enroll"]/*[[".buttons[\"Enroll\"].staticTexts[\"Enroll\"]",".buttons[\"enrollButton\"].staticTexts[\"Enroll\"]",".staticTexts[\"Enroll\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
