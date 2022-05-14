//
//  ReadLineTest.swift
//  ReadLineTest
//
//  Created by 김동용 on 2022/05/14.
//


import XCTest
@testable import CodeStarterCamp_Week4
class ReadLineTest: XCTestCase {
    var sut: FitnessCenter().checkIsInputNumber()
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = FitnessCenter().checkIsInputNumber()
    }

    override func tearDownWithError() throws {
      try super.tearDownWithError()
        sut = nil
    }

    func test_() {
        
    }
}
