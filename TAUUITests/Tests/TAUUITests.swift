import XCTest


final class TAUUITests: TAUUITestBase {

    @MainActor
    func testTextElementOnMainScreen() throws {
        app/*@START_MENU_TOKEN@*/.staticTexts["enterCity"]/*[[".otherElements",".staticTexts[\"Enter Your City \"]",".staticTexts[\"enterCity\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.textFields["city"]/*[[".otherElements.textFields[\"city\"]",".textFields",".textFields[\"city\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.textFields["city"]/*[[".otherElements",".textFields[\"englan\"]",".textFields[\"city\"]",".textFields"],[[[-1,2],[-1,1],[-1,3],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch.typeText("england")
        
        let element = app/*@START_MENU_TOKEN@*/.staticTexts["Enroll"]/*[[".buttons",".staticTexts",".staticTexts[\"Enroll\"]"],[[[-1,2],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch
        app/*@START_MENU_TOKEN@*/.textFields["city"]/*[[".otherElements",".textFields[\"England\"]",".textFields[\"city\"]",".textFields"],[[[-1,2],[-1,1],[-1,3],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch.typeText("\r")
        element.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Thanks for Joining!"]/*[[".otherElements.staticTexts[\"Thanks for Joining!\"]",".staticTexts[\"Thanks for Joining!\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        XCTAssert(app/*@START_MENU_TOKEN@*/.staticTexts["Thanks for Joining!"]/*[[".otherElements.staticTexts[\"Thanks for Joining!\"]",".staticTexts[\"Thanks for Joining!\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
    }

    
    func testThankouMessage() throws {
        app.staticTexts["welcomeMessage"].firstMatch.tap()
        app.textFields["city"].tap()
        app.textFields["city"].typeText("nogahai")
        app.buttons["enrollButton"].tap()
        XCTAssert(XCUIApplication().staticTexts["Thanks for Joining!"].exists)
        
        
    }
    
    @MainActor
    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }
}
