import Foundation
import XCTest


enum TAUScreen: String {
    
    case welcomeMessage = "welcomeMessage"
    case tauLogo = "TAUlogo"
    case enterCityLabel = "enterCity"
    case cityTextField = "city"
    case enrollButton = "enrollButton"
    case thankYouMessage = "Thanks for Joining!"
    case errorMessage = "Please Enter City"
    
    var element: XCUIElement {
        
        switch self {
        case .welcomeMessage, .enterCityLabel, .thankYouMessage, .errorMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        case .cityTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .enrollButton:
            return XCUIApplication().buttons[self.rawValue]
        case .tauLogo:
            //We can specify different devices
            if UIDevice.current.userInterfaceIdiom == .pad {
                return XCUIApplication().images["iPad"]
            }
            return XCUIApplication().images[self.rawValue]
        }
    }
}
