//
//  UnitTestingAppTests.swift
//  UnitTestingAppTests
//
//  Created by admin on 29.08.2022.
//

import XCTest
@testable import UnitTestingApp

class DataModelTests: XCTestCase {
    
    var sut: DataModel! //sut = system under test
    
    //загружаем в память для тестирования
    override func setUp() {
        super.setUp()
        sut = DataModel()
    }
    
    //выгружаем из памяти после тестирования
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() throws {
        //given дано
        sut.setVolume(to: -1)
        
        //when что произошло?
        let volume = sut.volume
        
        //then
        XCTAssert(volume == 0, "Lowest value should be equal 0")
    }
    func testHighestVolumeShouldBeOneHundred() throws {
        //given дано
        sut.setVolume(to: 101)
        
        //when что произошло?
        let volume = sut.volume
        
        //than
        XCTAssert(volume == 100, "Highest value should be equal 100")
    }

    //тест производительности блока кода
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
            sut.setVolume(to: 50)
        }
    }

    func testNumberOneMustBeGreaterThanNumberTwo() throws {
        let numberOne = 1
        let numberTwo = 0
        
        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        XCTAssert(isGreater, "The number one must be greater than number two")
        
    }
    func testNumberOneNotBeGreaterThanNumberTwo() throws {
        let numberOne = 1
        let numberTwo = 1
        
        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        XCTAssert(!isGreater, "The number one must be greater than number two")

    }
}
