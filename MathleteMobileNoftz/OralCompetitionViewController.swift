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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        oralCompTableView.delegate = self
        oralCompTableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        oralCompTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        oralCompErrorLabel.text = ""
    }
    
    
    @IBAction func addToOralCompAction(_ sender: UIButton) {
        if AppData.indexSelected != -1 {
            AppData.oralCompTeam.append(AppData.students[AppData.indexSelected])
            oralCompErrorLabel.text = "Student added to team!"
        } else {
            oralCompErrorLabel.text = "Select a student!"
        }
        AppData.indexSelected = -1
    }
    
    @IBAction func oralCompViewTeamAction(_ sender: UIButton) {
        oralCompErrorLabel.text = ""
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.students.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell5 = tableView.dequeueReusableCell(withIdentifier: "myCell5") as! OralCompCell

        cell5.nameLabel.text = AppData.students[indexPath.row].name
        cell5.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
        
        return cell5

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
