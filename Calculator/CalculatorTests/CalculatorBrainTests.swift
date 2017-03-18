//
//  CalculatorBrainTests.swift
//  Calculator
//
//  Created by Peter Vanhoef on 18/03/17.
//  Copyright © 2017 Peter Vanhoef. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorBrainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSetOperand() {
        var testBrain = CalculatorBrain()
        testBrain.setOperand(5.0)
        XCTAssertEqual(testBrain.result, 5.0)
    }
    
    func testPerformOperation() {
        var testBrain = CalculatorBrain()
        
        testBrain.setOperand(81)
        testBrain.performOperation("√")
        XCTAssertEqual(testBrain.result, 9)
        
        testBrain.setOperand(5)
        testBrain.performOperation("×")
        testBrain.setOperand(8)
        testBrain.performOperation("=")
        XCTAssertEqual(testBrain.result, 40)
    }
    
}
