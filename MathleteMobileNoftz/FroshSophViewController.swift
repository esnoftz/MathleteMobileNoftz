//
//  FroshSophViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 11/7/24.
//

import UIKit

class FroshSophViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var froshSophTableView: UITableView!
    
    @IBOutlet weak var froshSophErrorLabel: UILabel!
    
    @IBOutlet weak var FSAddedTableView: UITableView!
    
    var availableFSStudents = AppData.students

    override func viewDidLoad() {
        super.viewDidLoad()

        froshSophTableView.delegate = self
        froshSophTableView.dataSource = self
        
        FSAddedTableView.delegate = self
        FSAddedTableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        froshSophTableView.reloadData()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        AppData.selectedIndexes.append(indexPath.row)
        froshSophErrorLabel.text = ""
    }
    
    @IBAction func addToFroshSophAction(_ sender: UIButton) {
        for i in 0...AppData.selectedIndexes.count - 1 {
            if AppData.selectedIndexes[i] != -1 {
                AppData.froshSophTeam.append(AppData.students[AppData.selectedIndexes[i]])
                froshSophErrorLabel.text = "Student added to team!"
            } else {
                froshSophErrorLabel.text = "Select a student!"
            }
            //availableFSStudents.remove(at: AppData.selectedIndexes[i])
        }
        
        print("selected indexes \(AppData.selectedIndexes.count)")
        print("availabe students \(availableFSStudents.count)")
        
        var numIndexes = AppData.selectedIndexes.count - 1
        while numIndexes >= 0 {
            availableFSStudents.remove(at: AppData.selectedIndexes[numIndexes])
            numIndexes = numIndexes - 1
        }
        
        /*for i in AppData.selectedIndexes.count...1 {
            //print("selected indexes \(AppData.selectedIndexes.count)")
            //print("availabe students \(availableFSStudents.count)")
            availableFSStudents.remove(at: AppData.selectedIndexes[i])
        }*/
        
        AppData.indexSelected = -1
        AppData.selectedIndexes = [Int]()
        FSAddedTableView.reloadData()
        froshSophTableView.reloadData()
    }
    
    @IBAction func froshSophViewTeamAction(_ sender: UIButton) {
        froshSophErrorLabel.text = ""
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == froshSophTableView {
            return availableFSStudents.count
        } else {
            return AppData.froshSophTeam.count
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == froshSophTableView {
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "myCell2") as! FroshSophCell
            
            cell2.nameLabel.text = availableFSStudents[indexPath.row].name
            cell2.gradeLabel.text = "\(availableFSStudents[indexPath.row].grade)"

            
            /*cell2.nameLabel.text = AppData.students[indexPath.row].name
            cell2.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"*/
            
            return cell2
            
        } else {
            
            let cell9 = tableView.dequeueReusableCell(withIdentifier: "myCell9") as! FSAddedCell
            
            cell9.nameLabel2.text = AppData.froshSophTeam[indexPath.row].name
            cell9.gradeLabel2.text = "\(AppData.froshSophTeam[indexPath.row].grade)"
            
            return cell9

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
