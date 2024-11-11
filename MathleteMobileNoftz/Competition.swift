//
//  Competition.swift
//  MathleteMobileNoftz
//
//  Created by David Noftz on 11/11/24.
//

import Foundation

class Competition: Codable {
    var froshSophTeam: Array<Student>
    var jrSrTeam: Array<Student>
    var twoPersonTeam: Array<Student>
    var oralCompTeam: Array<Student>
    var calculatorTeam: Array<Student>
    var competitionName: String
    
    init(froshSophTeam: Array<Student>, jrSrTeam: Array<Student>, twoPersonTeam: Array<Student>, oralCompTeam: Array<Student>, calculatorTeam: Array<Student>, competitionName: String) {
        self.froshSophTeam = froshSophTeam
        self.jrSrTeam = jrSrTeam
        self.twoPersonTeam = twoPersonTeam
        self.oralCompTeam = oralCompTeam
        self.calculatorTeam = calculatorTeam
        self.competitionName = competitionName
    }
    
}
