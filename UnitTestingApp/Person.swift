//
//  Person.swift
//  UnitTestingApp
//
//  Created by admin on 30.08.2022.
//

import Foundation

class Person {
    let name: String
    var surname: String?
    let phone: String
    
    init(name: String, phone: String) {
        self.name = name
        self.phone = phone
    }
    
    init(name: String, surname: String, phone: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
    }

    
    
}
