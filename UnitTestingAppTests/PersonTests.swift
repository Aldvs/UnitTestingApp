//
//  PersonTests.swift
//  UnitTestingAppTests
//
//  Created by admin on 30.08.2022.
//

import XCTest
@testable import UnitTestingApp

class PersonTests: XCTestCase {
    
    var person: Person?
    var personWithFullName: Person?
    

    override func setUp() {
        super.setUp()
        person = Person(name: "Foo", phone: "Bar")
        personWithFullName = Person(name: "Foo", surname: "Bar", phone: "Bar")

    }

    override func tearDown() {
        person = nil
        personWithFullName = nil
        super.tearDown()
    }

    func testInitPersonWithNameAndPhone() {
        XCTAssertNotNil(person)
    }

    func testInitPersonWithFullNameAndPhone() {
        XCTAssertNotNil(person)
    }
    
    func testWhenGivenNameAndPhoneSetsNameAndPhone() {
        XCTAssertEqual(person?.name, "Foo")
        XCTAssertEqual(person?.phone, "Bar")
    }
    
    func testWhenGivenFullNameAndPhoneSetsFullNameAndPhone() {
        XCTAssertTrue(personWithFullName?.surname == "Bar")
    }


}
