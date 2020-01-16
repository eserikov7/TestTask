//
//  TestTaskModelTests.swift
//  TestTaskModelTests
//
//  Created by Evgeny Serikov on 16.01.2020.
//  Copyright © 2020 test. All rights reserved.
//

import XCTest
@testable import TestTaskModel

class TestTaskModelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValidHTTPStatusCode200() {
        let service = TickersService()
        let promise = expectation(description: "Status code: 200")
        service.fetch { (result) in
            switch result {
            case .success(_):
                promise.fulfill()
            case .failure(let error):
                XCTFail("Error: \(error.localizedDescription)")
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
