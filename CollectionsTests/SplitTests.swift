//
//  SplitTests.swift
//  Collections
//
//  Created by James Bean on 2/5/17.
//
//

import XCTest
import Collections

class SplitTests: XCTestCase {

    func testSplitAndExtractEmpty() {
        let array: [Int] = []
        XCTAssertNil(array.splitAndExtractElement(at: 0))
    }

    func testSplitAndExtractSingle() {

        let array: [Int] = [0]

        let expected: ([Int], Int, [Int]) = ([], 0, [])
        let result = array.splitAndExtractElement(at: 0)!

        XCTAssertEqual(expected.0, result.0)
        XCTAssertEqual(expected.1, result.1)
        XCTAssertEqual(expected.2, result.2)
    }

    func testSplitAndExtractMutlple() {

        let array: [Int] = [1,2,3,4,5]

        let expected = ([1,2], 3, [4,5])
        let result = array.splitAndExtractElement(at: 2)!

        XCTAssertEqual(expected.0, result.0)
        XCTAssertEqual(expected.1, result.1)
        XCTAssertEqual(expected.2, result.2)
    }
}
