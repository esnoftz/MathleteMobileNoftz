//
//  ProfileViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 11/26/24.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileDescriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var name = AppData.students[AppData.indexSelected].name
        var mathCourses = ""
        for i in AppData.students[AppData.indexSelected].mathCourses {
            mathCourses += "\(i), "
        }
        var awards = ""
        for i in AppData.students[AppData.indexSelected].awards {
            awards += "\(i), "
        }
        var testScores = ""
        for i in AppData.students[AppData.indexSelected].testScores {
            testScores += "\(i), "
        }
        var compsAttended = ""
        for i in AppData.students[AppData.indexSelected].compsAttended {
            compsAttended += "\(i), "
        }
        
        profileDescriptionTextView.text = "Name: " + AppData.students[AppData.indexSelected].name + "\nGrade: " + AppData.students[AppData.indexSelected].grade + "\nMath Courses: " + mathCourses + "\nAwards: " + awards + "\nTest Scores: " + testScores + "\nCompetitions Attended: " + compsAttended
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
