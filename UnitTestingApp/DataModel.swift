//
//  DataModel.swift
//  UnitTestingApp
//
//  Created by admin on 29.08.2022.
//

import Foundation

class DataModel {
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
}
