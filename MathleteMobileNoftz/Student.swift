//
//  Student.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 10/31/24.
//

import Foundation

class Student: Codable {
    var name: String
    var grade: Int
    
    init(name: String, grade: Int) {
        self.name = name
        self.grade = grade
    }
}
