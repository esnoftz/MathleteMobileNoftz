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
    var mathCourses = [String]()
    var testScores = [Int]()
    var awards = [String]()
    var compsAttended = [String]()
    //var picture

    init(name: String, grade: Int, mathCourses: [String], testScores: [Int], awards: [String], compsAttended: [String]) {
        self.name = name
        self.grade = grade
        self.mathCourses = mathCourses
        self.testScores = testScores
        self.awards = awards
        self.compsAttended = compsAttended
    }
}
