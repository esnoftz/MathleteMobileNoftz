//
//  ViewStudentsViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 10/31/24.
//

import UIKit

class ViewStudentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var viewStudentsTableView: UITableView!
    
    @IBOutlet weak var allStudentsErrorLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewStudentsTableView.delegate = self
        viewStudentsTableView.dataSource = self
        
        //var studentList = AppData.defaults.array(forKey: "membersList")
        //AppData.students = studentList
        
    }
    

    override func viewDidAppear(_ animated: Bool) {
        viewStudentsTableView.reloadData()
    }

    
    @IBAction func deleteStudentAction(_ sender: UIButton) {
        if AppData.indexSelected != -1 {
            print(AppData.indexSelected)
            AppData.students.remove(at: AppData.indexSelected)
            viewStudentsTableView.reloadData()
            allStudentsErrorLabel.text = "Student deleted!"
        } else {
            allStudentsErrorLabel.text = "Select a student to delete!"
            print(AppData.indexSelected)
        }
        AppData.indexSelected = -1
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        print(AppData.indexSelected)
        print(AppData.students[AppData.indexSelected].name)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.students.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell

        cell.nameLabel.text = AppData.students[indexPath.row].name
        cell.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
        
        return cell

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
