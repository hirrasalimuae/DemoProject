//
//  TestBuilder.swift
//  DemoProjectUITests
//
//  Created by Hira Saleem on 09/03/2022.
//

import XCTest

class TestBuilder {
    let app: XCUIApplication
    
    required init(_ app: XCUIApplication) {
        self.app = app
    }
    
    func setLocale() -> Self {
        app.launchArguments += ["-AppleLanguages", "(en)"]
        app.launchArguments += ["-AppleLocale", "en_US"]

        return self
    }
    
    func launch() -> Page {
        app.launch()

        return Page(app)
    }
}
