//
//  JrSrViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 11/7/24.
//

import UIKit

class JrSrViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var jrSrTableView: UITableView!
    
    @IBOutlet weak var jrSrErrorLabel: UILabel!
    
    @IBOutlet weak var JSAddedTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        jrSrTableView.delegate = self
        jrSrTableView.dataSource = self
        
        JSAddedTableView.delegate = self
        JSAddedTableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        jrSrTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        AppData.selectedIndexes.append(indexPath.row)
        jrSrErrorLabel.text = ""
    }
    
    @IBAction func addToJrSrAction(_ sender: UIButton) {
        /*if AppData.indexSelected != -1 {
            AppData.jrSrTeam.append(AppData.students[AppData.indexSelected])
            jrSrErrorLabel.text = "Student added to team!"
        } else {
            jrSrErrorLabel.text = "Select a student!"
        }
        AppData.indexSelected = -1*/
        
        
        
        
        
        for i in 0...AppData.selectedIndexes.count - 1 {
            if AppData.selectedIndexes[i] != -1 {
                AppData.jrSrTeam.append(AppData.students[AppData.selectedIndexes[i]])
                jrSrErrorLabel.text = "Student added to team!"
            } else {
                jrSrErrorLabel.text = "Select a student!"
            }
            //AppData.students.remove(at: AppData.selectedIndexes[i])
        }
        AppData.indexSelected = -1
        AppData.selectedIndexes = [Int]()
        JSAddedTableView.reloadData()

    }
    
    @IBAction func jrSrViewTeamAction(_ sender: UIButton) {
        jrSrErrorLabel.text = ""
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return AppData.students.count
        
        
        if tableView == jrSrTableView {
            return AppData.students.count
        } else {
            return AppData.jrSrTeam.count
        }

    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /*let cell3 = tableView.dequeueReusableCell(withIdentifier: "myCell3") as! JrSrCell

        cell3.nameLabel.text = AppData.students[indexPath.row].name
        cell3.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
        
        return cell3*/

        
        
        
        
        
        
        
        if tableView == jrSrTableView {
            
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "myCell3") as! JrSrCell
            
            cell3.nameLabel.text = AppData.students[indexPath.row].name
            cell3.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
            
            return cell3
            
        } else {
            
            let cell10 = tableView.dequeueReusableCell(withIdentifier: "myCell10") as! JSAddedCell
            
            cell10.nameLabel2.text = AppData.jrSrTeam[indexPath.row].name
            cell10.gradeLabel2.text = "\(AppData.jrSrTeam[indexPath.row].grade)"
            
            return cell10

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
