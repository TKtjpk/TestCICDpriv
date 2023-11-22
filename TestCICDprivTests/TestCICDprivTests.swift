//
//  TestCICDprivTests.swift
//  TestCICDprivTests
//
//  Created by Tomasz Kubicki on 19/10/2023.
//

import XCTest
@testable import TestCICDpriv

final class TestCICDprivTests: XCTestCase {
    
    //var testClass = TestClass()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        //XCTAssertEqual(testClass.test2(inne: 10), 123)
        //XCTAssertEqual(testClass.test3(), 6.77)
        //XCTAssertTrue(testClass.test2(inne: 10).isMultiple(of: 123))
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testAsync() async {
        //let res = await testClass.test(some: 10, someS: "")
        //XCTAssertEqual(res, "test")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
