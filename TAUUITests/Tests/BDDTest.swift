import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    
    func testThankYouMesssageInBDDStyle() {
        givenAppIsReady()
        whenIEnter(city: "london")
        whenIEnrolled()

        thenIShouldSeeThankYouMessage()
    }
}


