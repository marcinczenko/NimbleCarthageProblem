//
//  ExampleClassTests.swift
//  ExampleClassTests
//
//  Created by Marcin Czenko on 09/04/16.
//  Copyright © 2016 Everyday Productive. All rights reserved.
//

import XCTest
import Nimble

@testable import ExampleFramework

class ExampleFrameworkTests: XCTestCase {
    
    func testExample() {
        expect(ExampleClass().hello()).to(equal("hello"))
    }
}
