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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        froshSophTableView.delegate = self
        froshSophTableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        froshSophTableView.reloadData()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        froshSophErrorLabel.text = ""
    }
    
    @IBAction func addToFroshSophAction(_ sender: UIButton) {
        if AppData.indexSelected != -1 {
            AppData.froshSophTeam.append(AppData.students[AppData.indexSelected])
            froshSophErrorLabel.text = "Student added to team!"
        } else {
            froshSophErrorLabel.text = "Select a student!"
        }
        AppData.indexSelected = -1
    }
    
    @IBAction func froshSophViewTeamAction(_ sender: UIButton) {
        froshSophErrorLabel.text = ""
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.students.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "myCell2") as! FroshSophCell

        cell2.nameLabel.text = AppData.students[indexPath.row].name
        cell2.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
        
        return cell2

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
