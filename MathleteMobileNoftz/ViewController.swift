//
//  ViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 10/28/24.
//

// That feeling 
//When knee surgery is tomorrow


import UIKit

class AppData {
    static var students = [Student]()
    static var indexSelected = -1
    static var defaults = UserDefaults.standard
    static var encoder = JSONEncoder()
    static var decoder = JSONDecoder()
    static var froshSophTeam = [Student]()
    static var jrSrTeam = [Student]()
    static var twoPersonTeam = [Student]()
    static var oralCompTeam = [Student]()
    static var calculatorTeam = [Student]()
    static var competitions = [Competition]()
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // FRESHMEN
       AppData.students.append(Student(name: "Alex Adami", grade: 9, mathCourses: ["H Geometry","H Algebra II w/ Trig"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Sydney Akers", grade: 9, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Kieran Krotser", grade: 9, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Oliver Lee", grade: 9, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Keshav Parikh", grade: 9, mathCourses: ["H Geometry"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Nicholas Vintartas", grade: 9, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        
        // SOPHOMORES
        AppData.students.append(Student(name: "Oli Bajkiewicz", grade: 10, mathCourses: ["H Geometry","H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Malwina Bendyk", grade: 10, mathCourses: ["H Geometry","H Algebra II w/ Trig"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Avery Chan", grade: 10, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Shane Coffey", grade: 10, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Luke Farrell", grade: 10, mathCourses: ["H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Skyler Ferrero", grade: 10, mathCourses: ["Algebra","H Geometry","H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Jackson Gerambia", grade: 10, mathCourses: ["H Geometry","H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Riya Gupte", grade: 10, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Alex Herrera", grade: 10, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Sammy Koscielski", grade: 10, mathCourses: ["H Geometry","H Algebra II w/ Trig"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Giada Lipkie", grade: 10, mathCourses: ["H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Al Meyer", grade: 10, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Aaron Mogilinski", grade: 10, mathCourses: ["Algebra","H Geometry","H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Suhani Patel", grade: 10, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Andrew Persky", grade: 10, mathCourses: ["H Geometry","H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Danny Pierzina", grade: 10, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Brennan Reinhard", grade: 10, mathCourses: ["H Geometry","H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Ryleigh Smith", grade: 10, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "William Taylor", grade: 10, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Jayden Vargas", grade: 10, mathCourses: ["H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Alvin Wei", grade: 10, mathCourses: ["H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Eileen Wei", grade: 10, mathCourses: ["H Algebra II w/ Trig","H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        
        
        // JUNIORS
        AppData.students.append(Student(name: "Jimmy Carroza", grade: 11, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Penelope Feign", grade: 11, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Aleah Lejis", grade: 11, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Katharine Leon", grade: 11, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Jack Lisle", grade: 11, mathCourses: ["H Geometry", "H Algebra II w/ Trig", "H Pre-calculus", "AP Calculus BC"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Emily Mares", grade: 11, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Evan Meyer", grade: 11, mathCourses: ["Algebra", "Geometry", "H Algebra II w/ Trig", "H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Matthew Piech", grade: 11, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Prateek Ponnam", grade: 11, mathCourses: ["AP Calculus BC"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Ryan Spencer", grade: 11, mathCourses: ["H Algebra II w/ Trig", "H Pre-calculus", "AP Calculus BC"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Brinley Wright", grade: 11, mathCourses: ["H Geometry", "H Algebra II w/ Trig", "H Pre-calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        
        
        // SENIORS
        AppData.students.append(Student(name: "Carter Blum", grade: 12, mathCourses: ["Algebra", "Geometry", "H Algebra II w/ Trig", "H Pre-calculus", "DC Statistics"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Casey Dalicandro", grade: 12, mathCourses: ["Algebra", "H Geometry", "H Algebra II w/ Trig", "H Pre-calculus", "AP Calculus BC", "DC Calculus III"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Brady Farrell", grade: 12, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Hadley Ferrero", grade: 12, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Kavya Karthi", grade: 12, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Mason McIntyre", grade: 12, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Conor Naughton", grade: 12, mathCourses: ["Algebra", "H Geometry", "H Pre-calculus", "AP Statistics", "AP Calculus BC", "DC Calculus III"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Eva Noftz", grade: 12, mathCourses: ["Algebra", "H Geometry", "H Algebra II w/ Trig", "H Pre-calculus", "AP Statistics", "AP Calculus BC", "DC Calculus III"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Nicholas Santoyo", grade: 12, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Ava Schmidt", grade: 12, mathCourses: ["Algebra", "H Geometry", "H Algebra II w/ Trig", "H Pre-calculus", "DC Statistics", "DC Applied Calculus"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Mykaela Wallen", grade: 12, mathCourses: ["DC Calculus III"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Justin Weber", grade: 12, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
        AppData.students.append(Student(name: "Seth White", grade: 12, mathCourses: ["DC Calculus III"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))

        /*var student = AppData.defaults.object(forKey: "studentsList")
        if let s = student {
            let ss = s as! [Student] // casting to string array (guarenteed)
            for something in ss {
                print(something)
            }
        }*/
        
        if let allStudents = AppData.defaults.data(forKey: "studentsList") {

            // decoding the data stored in blahDogs into objects in a Dog array
            if let inStudents = try? AppData.decoder.decode([Student].self, from: allStudents) {
                AppData.students = inStudents
                
                for s in AppData.students {
                    print(s.name)
                }
                
            }
            
        }
        
        if let allCompetitions = AppData.defaults.data(forKey: "competitionsList") {

            // decoding the data stored in blahDogs into objects in a Dog array
            if let inCompetitions = try? AppData.decoder.decode([Competition].self, from: allCompetitions) {
                AppData.competitions = inCompetitions
                
                for c in AppData.competitions {
                    print(c.competitionName)
                }
                
            }
            
        }
        
    }
    
    
    @IBAction func saveAction(_ sender: UIButton) {
        if let studentsTest = try? AppData.encoder.encode(AppData.students) {    // safe unwrap!
            AppData.defaults.set(studentsTest, forKey: "studentsList")
        }
        
        if let competitionsText = try? AppData.encoder.encode(AppData.competitions) {    // safe unwrap!
            AppData.defaults.set(competitionsText, forKey: "competitionsList")
        }
    }
    


}

