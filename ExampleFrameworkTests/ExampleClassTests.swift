//
//  ExampleClassTests.swift
//  ExampleClassTests
//
//  Created by Marcin Czenko on 09/04/16.
//  Copyright © 2016 Everyday Productive. All rights reserved.
//

import XCTest
@testable import ExampleFramework

class ExampleFrameworkTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual("hello", ExampleClass().hello())
    }
}
