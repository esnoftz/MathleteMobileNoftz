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
    
    @IBOutlet weak var calcAddedTableView: UITableView!
    
    var availableCalculatorStudents = AppData.students
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculatorTableView.delegate = self
        calculatorTableView.dataSource = self
        
        calcAddedTableView.delegate = self
        calcAddedTableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        calculatorTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.indexSelected = indexPath.row
        AppData.selectedIndexes.append(indexPath.row)
        calculatorErrorLabel.text = ""
    }
    
    @IBAction func addToCalculatorAction(_ sender: UIButton) {
        /*if AppData.indexSelected != -1 {
            AppData.calculatorTeam.append(AppData.students[AppData.indexSelected])
            calculatorErrorLabel.text = "Student added to team!"
        } else {
            calculatorErrorLabel.text = "Select a student!"
        }
        AppData.indexSelected = -1*/
        
        
        
        for i in 0...AppData.selectedIndexes.count - 1 {
            if AppData.selectedIndexes[i] != -1 {
                AppData.calculatorTeam.append(AppData.students[AppData.selectedIndexes[i]])
                calculatorErrorLabel.text = "Student added to team!"
            } else {
                calculatorErrorLabel.text = "Select a student!"
            }
            //AppData.students.remove(at: AppData.selectedIndexes[i])
        }
        
        var numIndexes = AppData.selectedIndexes.count - 1
        while numIndexes >= 0 {
            availableCalculatorStudents.remove(at: AppData.selectedIndexes[numIndexes])
            numIndexes = numIndexes - 1
        }
        
        AppData.indexSelected = -1
        AppData.selectedIndexes = [Int]()
        calcAddedTableView.reloadData()
        calculatorTableView.reloadData()

        
    }
    
    @IBAction func calculatorViewTeamAction(_ sender: UIButton) {
        calculatorErrorLabel.text = ""
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return AppData.students.count
        
        if tableView == calculatorTableView {
            return AppData.students.count
        } else {
            return AppData.calculatorTeam.count
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /*let cell6 = tableView.dequeueReusableCell(withIdentifier: "myCell6") as! CalculatorCell

        cell6.nameLabel.text = AppData.students[indexPath.row].name
        cell6.gradeLabel.text = "\(AppData.students[indexPath.row].grade)"
        
        return cell6*/
        
        
        
        
        
        if tableView == calculatorTableView {
            
            let cell6 = tableView.dequeueReusableCell(withIdentifier: "myCell6") as! CalculatorCell
            
            cell6.nameLabel.text = availableCalculatorStudents[indexPath.row].name
            cell6.gradeLabel.text = "\(availableCalculatorStudents[indexPath.row].grade)"
            
            return cell6
            
        } else {
            
            let cell13 = tableView.dequeueReusableCell(withIdentifier: "myCell13") as! CalcAddedCell
            
            cell13.nameLabel2.text = AppData.calculatorTeam[indexPath.row].name
            cell13.gradeLabel2.text = "\(AppData.calculatorTeam[indexPath.row].grade)"
            
            return cell13

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
