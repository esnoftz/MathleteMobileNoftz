//
//  AddStudentViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 10/31/24.
//

import UIKit

class AddStudentViewController: UIViewController {

    @IBOutlet weak var studentNameInput: UITextField!
    
    @IBOutlet weak var studentGradeInput: UITextField!
    
    @IBOutlet weak var addStudentErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    @IBAction func addStudentAction(_ sender: UIButton) {
        if studentNameInput.text == "" || studentGradeInput.text == "" {
            addStudentErrorLabel.text = "Input both the name and grade of the student!"
        } else {
            if let trial = Int(studentGradeInput.text!) {
                AppData.students.append(Student(name: studentNameInput.text!, grade: Int(studentGradeInput.text!)!, mathCourses: ["N/A"], testScores: [0], awards: ["N/A"], compsAttended: ["N/A"]))
                //AppData.students.append(Student(name: studentNameInput.text!, grade: Int(studentGradeInput.text!)!))
                addStudentErrorLabel.text = "Student Added!"
                studentNameInput.text = ""
                studentGradeInput.text = ""
            } else {
                addStudentErrorLabel.text = "Enter a valid grade!"
            }
        }
        
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
