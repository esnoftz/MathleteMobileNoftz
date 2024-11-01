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
    
    var index = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewStudentsTableView.delegate = self
        viewStudentsTableView.dataSource = self
        
    }
    

    override func viewDidAppear(_ animated: Bool) {
        viewStudentsTableView.reloadData()
    }

    
    @IBAction func deleteStudentAction(_ sender: UIButton) {
        if index != -1 {
            AppData.students.remove(at: index)
            viewStudentsTableView.reloadData()
            allStudentsErrorLabel.text = "Student deleted!"
            index = -1
        } else {
            allStudentsErrorLabel.text = "Select a student to delete!"
        }
    }
    
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        index = indexPath.row
        print(index)
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
