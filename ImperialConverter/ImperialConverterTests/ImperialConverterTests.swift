//
//  ImperialConverterTests.swift
//  ImperialConverterTests
//
//  Created by Onur Erbey on 26.07.2020.
//  Copyright © 2020 Onur Erbey. All rights reserved.
//

import XCTest

class ImperialConverterTests: XCTestCase {

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
    
    func testMileToKm() {
        XCTAssert(DistanceConverter.convertDist(forMiles: 50.0) == 80.0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
