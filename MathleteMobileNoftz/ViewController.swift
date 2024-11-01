//
//  ViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 10/28/24.
//

import UIKit

class AppData {
    static var students = [Student]()
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // FRESHMEN
        AppData.students.append(Student(name: "Alex Adami", grade: 9))
        AppData.students.append(Student(name: "Sydney Akers", grade: 9))
        AppData.students.append(Student(name: "Kieran Krotser", grade: 9))
        AppData.students.append(Student(name: "Oliver Lee", grade: 9))
        AppData.students.append(Student(name: "Keshav Parikh", grade: 9))
        AppData.students.append(Student(name: "Nicholas Vintartas", grade: 9))
        
        
        // SOPHOMORES
        AppData.students.append(Student(name: "Oli Bajkiewicz", grade: 10))
        AppData.students.append(Student(name: "Malwina Bendyk", grade: 10))
        AppData.students.append(Student(name: "Avery Chan", grade: 10))
        AppData.students.append(Student(name: "Shane Coffey", grade: 10))
        AppData.students.append(Student(name: "Luke Farrell", grade: 10))
        AppData.students.append(Student(name: "Skyler Ferrero", grade: 10))
        AppData.students.append(Student(name: "Jackson Gerambia", grade: 10))
        AppData.students.append(Student(name: "Riya Gupte", grade: 10))
        AppData.students.append(Student(name: "Alex Herrera", grade: 10))
        AppData.students.append(Student(name: "Sammy Koscielski", grade: 10))
        AppData.students.append(Student(name: "Giada Lipkie", grade: 10))
        AppData.students.append(Student(name: "Al Meyer", grade: 10))
        AppData.students.append(Student(name: "Aaron Mogilinski", grade: 10))
        AppData.students.append(Student(name: "Suhani Patel", grade: 10))
        AppData.students.append(Student(name: "Andrew Persky", grade: 10))
        AppData.students.append(Student(name: "Danny Pierzina", grade: 10))
        AppData.students.append(Student(name: "Brennan Reinhard", grade: 10))
        AppData.students.append(Student(name: "Ryleigh Smith", grade: 10))
        AppData.students.append(Student(name: "William Taylor", grade: 10))
        AppData.students.append(Student(name: "Jayden Vargas", grade: 10))
        AppData.students.append(Student(name: "Alvin Wei", grade: 10))
        AppData.students.append(Student(name: "Eileen Wei", grade: 10))
        
        
        // JUNIORS
        AppData.students.append(Student(name: "Jimmy Carozza", grade: 11))
        AppData.students.append(Student(name: "Penelope Feign", grade: 11))
        AppData.students.append(Student(name: "Aleah Lejis", grade: 11))
        AppData.students.append(Student(name: "Katharine Leon", grade: 11))
        AppData.students.append(Student(name: "Jack Lisle", grade: 11))
        AppData.students.append(Student(name: "Emily Mares", grade: 11))
        AppData.students.append(Student(name: "Evan Meyer", grade: 11))
        AppData.students.append(Student(name: "Matthew Piech", grade: 11))
        AppData.students.append(Student(name: "Prateek Ponnam", grade: 11))
        AppData.students.append(Student(name: "Ryan Spencer", grade: 11))
        AppData.students.append(Student(name: "Brinley Wright", grade: 11))
        
        
        // SENIORS
        AppData.students.append(Student(name: "Carter Blum", grade: 12))
        AppData.students.append(Student(name: "Casey Dalicandro", grade: 12))
        AppData.students.append(Student(name: "Brady Farrell", grade: 12))
        AppData.students.append(Student(name: "Hadley Ferrero", grade: 12))
        AppData.students.append(Student(name: "Kavya Karthi", grade: 12))
        AppData.students.append(Student(name: "Mason McIntyre", grade: 12))
        AppData.students.append(Student(name: "Conor Naughton", grade: 12))
        AppData.students.append(Student(name: "Eva Noftz", grade: 12))
        AppData.students.append(Student(name: "Nicholas Santoyo", grade: 12))
        AppData.students.append(Student(name: "Ava Schmidt", grade: 12))
        AppData.students.append(Student(name: "Mykaela Wallen", grade: 12))
        AppData.students.append(Student(name: "Justin Weber", grade: 12))
        AppData.students.append(Student(name: "Seth White", grade: 12))

        
    }


}

