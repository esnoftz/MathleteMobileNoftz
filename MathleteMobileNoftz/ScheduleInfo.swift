import Foundation

class ScheduleInfo : Codable{
    
    var compName : String
    var date : String
    var time : String
    var loc : String
    var teams = [String]()
    
    init(compName: String, date: String, time: String, loc: String, teams: [String]) {
        self.compName = compName
        self.date = date
        self.time = time
        self.loc = loc
        self.teams = teams
    }
}
