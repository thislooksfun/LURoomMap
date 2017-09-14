//
//  LURoomFinderTests.swift
//  LURoomFinderTests
//
//  Created by thislooksfun on 9/10/17.
//  Copyright © 2017 thislooksfun. All rights reserved.
//

import XCTest
@testable import LURoomFinder

class LURoomFinderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCGPointClampWithinRange() {
        var p = CGPoint(x: 0, y: 0)
		p.clamp(x: -1...1, y: -1...1)
		
		XCTAssertEqual(p, CGPoint(x: 0, y: 0), "CGPoint clamp within range failed")
    }
	
	func testCGPointClampXOutsideRange() {
		var p1 = CGPoint(x: 2, y: 0)
		p1.clamp(x: -1...1, y: -1...1)
		XCTAssertEqual(p1, CGPoint(x: 1, y: 0), "CGPoint positive X clamp failed")
		
		var p2 = CGPoint(x: -2, y: 0)
		p2.clamp(x: -1...1, y: -1...1)
		XCTAssertEqual(p2, CGPoint(x: -1, y: 0), "CGPoint negative X clamp failed")
	}
	
	func testCGPointClampYOutsideRange() {
		var p1 = CGPoint(x: 0, y: 2)
		p1.clamp(x: -1...1, y: -1...1)
		XCTAssertEqual(p1, CGPoint(x: 0, y: 1), "CGPoint positive Y clamp failed")
		
		var p2 = CGPoint(x: 0, y: -2)
		p2.clamp(x: -1...1, y: -1...1)
		XCTAssertEqual(p2, CGPoint(x: 0, y: -1), "CGPoint negative Y clamp failed")
	}
	
	func testCGPointClampBothOutsideRange() {
		var p1 = CGPoint(x: 2, y: 2)
		p1.clamp(x: -1...1, y: -1...1)
		XCTAssertEqual(p1, CGPoint(x: 1, y: 1), "CGPoint positive X Y clamp failed")
		
		var p2 = CGPoint(x: 2, y: -2)
		p2.clamp(x: -1...1, y: -1...1)
		XCTAssertEqual(p2, CGPoint(x: 1, y: -1), "CGPoint positive X negative Y clamp failed")
		
		var p3 = CGPoint(x: -2, y: 2)
		p3.clamp(x: -1...1, y: -1...1)
		XCTAssertEqual(p3, CGPoint(x: -1, y: 1), "CGPoint negative X positive Y clamp failed")
		
		var p4 = CGPoint(x: -2, y: -2)
		p4.clamp(x: -1...1, y: -1...1)
		XCTAssertEqual(p4, CGPoint(x: -1, y: -1), "CGPoint negative X Y clamp failed")
	}
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
