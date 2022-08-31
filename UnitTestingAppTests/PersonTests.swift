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
    
    var image: UIImage?
    var imageData: Data?


    override func setUp() {
        super.setUp()
        person = Person(name: "Foo", phone: "Bar")
        personWithFullName = Person(name: "Foo", surname: "Bar", phone: "Bar")
        image = UIImage(systemName: "person.crop.circle")
        imageData = image?.pngData()


    }

    override func tearDown() {
        person = nil
        personWithFullName = nil
        image = nil
        imageData = nil
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

    func testInitPersonWithDate() {
        XCTAssertNotNil(person?.date)
    }
    
    func testInitPersonWithImage() {
        
        let person = Person(name: "Foo", phone: "Bar", image: imageData)
        
        XCTAssertNotNil(person.image)
    }
    
    func testInitPersonWithFullNameAndImage() {
        
        let person = Person(name: "Foo", surname: "Bar", phone: "Bar", image: imageData)
        
        XCTAssertNotNil(person.image)
    }

}
