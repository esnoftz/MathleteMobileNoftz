//
//  OralCompetitionViewController.swift
//  MathleteMobileNoftz
//
//  Created by David Noftz on 11/11/24.
//

import UIKit

class OralCompetitionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var oralCompTableView: UITableView!
    
    @IBOutlet weak var oralCompErrorLabel: UILabel!
    
    @IBOutlet weak var oralAddedTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        oralCompTableView.delegate = self
        oralCompTableView.dataSource = self
        
        oralAddedTableView.delegate = self
        oralAddedTableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        oralCompTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        AppData.selectedIndexes.append(indexPath.row)
        oralCompErrorLabel.text = ""
    }
    
    
    @IBAction func addToOralCompAction(_ sender: UIButton) {
        /*if AppData.indexSelected != -1 {
            AppData.oralCompTeam.append(AppData.students[AppData.indexSelected])
            oralCompErrorLabel.text = "Student added to team!"
        } else {
            oralCompErrorLabel.text = "Select a student!"
        }
        AppData.indexSelected = -1*/
        
        
        
        
        for i in 0...AppData.selectedIndexes.count - 1 {
            if AppData.selectedIndexes[i] != -1 {
                AppData.oralCompTeam.append(AppData.students[AppData.selectedIndexes[i]])
                oralCompErrorLabel.text = "Student added to team!"
            } else {
                oralCompErrorLabel.text = "Select a student!"
            }
            //AppData.students.remove(at: AppData.selectedIndexes[i])
        }
        AppData.indexSelected = -1
        AppData.selectedIndexes = [Int]()
        oralAddedTableView.reloadData()

    }
    
    @IBAction func oralCompViewTeamAction(_ sender: UIButton) {
        oralCompErrorLabel.text = ""
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return AppData.students.count
        
        if tableView == oralCompTableView {
            return AppData.students.count
        } else {
            return AppData.oralCompTeam.count
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /*let cell5 = tableView.dequeueReusableCell(withIdentifier: "myCell5") as! OralCompCell

        cell5.nameLabel.text = AppData.students[indexPath.row].name
        cell5.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
        
        return cell5*/
        
        
        
        
        
        if tableView == oralCompTableView {
            
            let cell5 = tableView.dequeueReusableCell(withIdentifier: "myCell5") as! OralCompCell
            
            cell5.nameLabel.text = AppData.students[indexPath.row].name
            cell5.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
            
            return cell5
            
        } else {
            
            let cell12 = tableView.dequeueReusableCell(withIdentifier: "myCell12") as! OralAddedCell
            
            cell12.nameLabel2.text = AppData.oralCompTeam[indexPath.row].name
            cell12.gradeLabel2.text = "\(AppData.oralCompTeam[indexPath.row].grade)"
            
            return cell12

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
