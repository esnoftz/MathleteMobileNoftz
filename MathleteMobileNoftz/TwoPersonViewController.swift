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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        twoPersonTableView.delegate = self
        twoPersonTableView.dataSource = self
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        twoPersonTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        twoPersonErrorLabel.text = ""
    }
    
    @IBAction func addToTwoPersonAction(_ sender: UIButton) {
        if AppData.indexSelected != -1 {
            AppData.twoPersonTeam.append(AppData.students[AppData.indexSelected])
            twoPersonErrorLabel.text = "Student added to team!"
        } else {
            twoPersonErrorLabel.text = "Select a student!"
        }
        AppData.indexSelected = -1
    }
    
    @IBAction func twoPersonViewTeamAction(_ sender: UIButton) {
        twoPersonErrorLabel.text = ""
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.students.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell4 = tableView.dequeueReusableCell(withIdentifier: "myCell4") as! TwoPersonCell

        cell4.nameLabel.text = AppData.students[indexPath.row].name
        cell4.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
        
        return cell4

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
