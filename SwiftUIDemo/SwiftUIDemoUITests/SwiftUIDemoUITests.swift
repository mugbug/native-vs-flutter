//
//  SwiftUIDemoUITests.swift
//  SwiftUIDemoUITests
//
//  Created by Pedro Zaroni on 08/01/20.
//  Copyright © 2020 Dextra. All rights reserved.
//

import XCTest

class SwiftUIDemoUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testApp() {
        let app = XCUIApplication()
        app.launch()

        let pedroTextField = app.textFields["Pedro"]
        pedroTextField.tap()
        pedroTextField.typeText("João")
        app.buttons["Return"].tap()
        app.buttons["Ir!"].tap()
        XCTAssertTrue(app.staticTexts["Oi, João!!"].waitForExistence(timeout: 2))
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
