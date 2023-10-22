//
//  SomeClass.swift
//  TestCICDpriv
//
//  Created by Tomasz Kubicki on 22/10/2023.
//

import Foundation

class TestClass {
    
    init() {
    }

    /// - Note: 'TESTME'
    /// - Parameter someS: takes 'String' as input
    /// - Parameter some: takes 'Int' as input
    /// - Returns: 'String'
    func test(some: Int, someS: String) async -> String {
        return "test"
    }

    /// - Note: '_add_your_comments_here'
    /// - Parameter inne: takes 'Int' as input
    /// - Returns: 'Int'
    /// - Throws: '_add_your_comments_here'
    func test2(inne: Int) throws -> Int {
        return 123
    }

    /// - Note: '_add_your_comments_here'
    /// - Returns: 'Double'
    func test3() -> Double
    {
        return 6.77
    }
    private func test4() -> Double
    {
        return 6.77
    }
}


