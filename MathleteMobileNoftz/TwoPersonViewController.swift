//
//  TwoPersonViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 11/7/24.
//

import UIKit

class TwoPersonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var twoPersonTableView: UITableView!
    
    @IBOutlet weak var twoPersonErrorLabel: UILabel!
    
    @IBOutlet weak var TPAddedTableView: UITableView!
    
    var availableTwoStudents = AppData.students
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        twoPersonTableView.delegate = self
        twoPersonTableView.dataSource = self
        
        TPAddedTableView.delegate = self
        TPAddedTableView.dataSource = self
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        twoPersonTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        AppData.selectedIndexes.append(indexPath.row)
        twoPersonErrorLabel.text = ""
    }
    
    @IBAction func addToTwoPersonAction(_ sender: UIButton) {
        /*if AppData.indexSelected != -1 {
            AppData.twoPersonTeam.append(AppData.students[AppData.indexSelected])
            twoPersonErrorLabel.text = "Student added to team!"
        } else {
            twoPersonErrorLabel.text = "Select a student!"
        }
        AppData.indexSelected = -1*/
        
        
        
        for i in 0...AppData.selectedIndexes.count - 1 {
            if AppData.selectedIndexes[i] != -1 {
                AppData.twoPersonTeam.append(AppData.students[AppData.selectedIndexes[i]])
                twoPersonErrorLabel.text = "Student added to team!"
            } else {
                twoPersonErrorLabel.text = "Select a student!"
            }
            //AppData.students.remove(at: AppData.selectedIndexes[i])
        }
        
        var numIndexes = AppData.selectedIndexes.count - 1
        while numIndexes >= 0 {
            availableTwoStudents.remove(at: AppData.selectedIndexes[numIndexes])
            numIndexes = numIndexes - 1
        }
        
        AppData.indexSelected = -1
        AppData.selectedIndexes = [Int]()
        TPAddedTableView.reloadData()
        twoPersonTableView.reloadData()

    }
    
    @IBAction func twoPersonViewTeamAction(_ sender: UIButton) {
        twoPersonErrorLabel.text = ""
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return AppData.students.count
        
        if tableView == twoPersonTableView {
            return AppData.students.count
        } else {
            return AppData.twoPersonTeam.count
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /*let cell4 = tableView.dequeueReusableCell(withIdentifier: "myCell4") as! TwoPersonCell

        cell4.nameLabel.text = AppData.students[indexPath.row].name
        cell4.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
        
        return cell4*/
        
        
        
        
        
        if tableView == twoPersonTableView {
            
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "myCell4") as! TwoPersonCell
            
            cell4.nameLabel.text = availableTwoStudents[indexPath.row].name
            cell4.gradeLabel.text = "\(availableTwoStudents[indexPath.row].grade)"
            
            return cell4
            
        } else {
            
            let cell11 = tableView.dequeueReusableCell(withIdentifier: "myCell11") as! TPAddedCell
            
            cell11.nameLabel2.text = AppData.twoPersonTeam[indexPath.row].name
            cell11.gradeLabel2.text = "\(AppData.twoPersonTeam[indexPath.row].grade)"
            
            return cell11

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
