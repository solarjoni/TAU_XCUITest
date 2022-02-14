import Foundation
import XCTest

extension TAUUITestBase {
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in // For reporting activities
        XCTAssertTrue(TAUScreen.enrollButton.element.exists)
        }
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter city") { _ in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
        }
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enrolled") { _ in
            TAUScreen.enrollButton.element.tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "I should See Correct Message") { _ in
//            XCTAssertTrue(TAUScreen.thankYouMessage.element.exists)
            XCTAsyncAssert(TAUScreen.thankYouMessage.element)
            
        }
    }
}


