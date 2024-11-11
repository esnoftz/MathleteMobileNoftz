//
//  CalculatorViewController.swift
//  MathleteMobileNoftz
//
//  Created by David Noftz on 11/11/24.
//

import UIKit

class CalculatorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var calculatorTableView: UITableView!
    
    @IBOutlet weak var calculatorErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculatorTableView.delegate = self
        calculatorTableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        calculatorTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        calculatorErrorLabel.text = ""
    }
    
    @IBAction func addToCalculatorAction(_ sender: UIButton) {
        if AppData.indexSelected != -1 {
            AppData.calculatorTeam.append(AppData.students[AppData.indexSelected])
            calculatorErrorLabel.text = "Student added to team!"
        } else {
            calculatorErrorLabel.text = "Select a student!"
        }
        AppData.indexSelected = -1
    }
    
    @IBAction func calculatorViewTeamAction(_ sender: UIButton) {
        calculatorErrorLabel.text = ""
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.students.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell6 = tableView.dequeueReusableCell(withIdentifier: "myCell6") as! CalculatorCell

        cell6.nameLabel.text = AppData.students[indexPath.row].name
        cell6.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
        
        return cell6

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
