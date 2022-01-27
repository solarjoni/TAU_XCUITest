import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    func testThankYouMessageInBDDStyle() {
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
//        let isThankMessageExist = TAUScreen.thankYouMessage.element.waitForExistence(timeout: 10)
//        if isThankMessageExist {
//            XCTAssertTrue(TAUScreen.thankYouMessage.element.exists)
//        }
        thenIShouldSeeThankYouMessage()
    }
}
