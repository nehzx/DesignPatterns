//
//  DesignPatternsTests.swift
//  DesignPatternsTests
//
//  Created by azhen on 2020/11/24.
//

import XCTest
@testable import DesignPatterns

class DesignPatternsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testFactoryTestCase() throws {
        let shape = ShapeFactory.getShape("Circle")
        shape.draw()
        
        XCTAssertTrue(type(of: shape) == Circle.self, "失败")
    }
    
    func testBuilderTestCase() throws {
        let builder = Builder().bigMaxCombo()
        print(builder.detailDesc)
    }
    
    func testBridgecase() throws {
        let bridge = Bridge(TV())
        print(bridge.turnOn(true))
        
    }
}
