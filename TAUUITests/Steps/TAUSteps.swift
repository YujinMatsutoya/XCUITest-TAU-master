//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by Yujin Matsutoya on 11/11/2026.
//  Copyright © 2026 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

extension TAUUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in
            XCTAssert(app.buttons["enrollButton"].exists)
        }
        
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter city \(city) ") { _ in
            app.textFields["city"].tap()
            app.textFields["city"].typeText(city)
        }
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I enroll") { _ in
            app.buttons["enrollButton"].tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I see thank you message") { _ in
            XCTAssert(app.staticTexts["Thanks for Joining!"].exists)
            XCTAsyncAssert(TAUScreen.thankYouMessage.element)
        }
    }
}
