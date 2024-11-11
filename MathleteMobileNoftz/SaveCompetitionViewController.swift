//
//  SaveCompetitionViewController.swift
//  MathleteMobileNoftz
//
//  Created by David Noftz on 11/11/24.
//

import UIKit

class SaveCompetitionViewController: UIViewController {

    @IBOutlet weak var saveCompetitionErrorLabel: UILabel!
    
    @IBOutlet weak var competitionNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveCompetitionAction(_ sender: UIButton) {
        
        if competitionNameTextField.text != "" {
            AppData.competitions.append(Competition(froshSophTeam: AppData.froshSophTeam, jrSrTeam: AppData.jrSrTeam, twoPersonTeam: AppData.twoPersonTeam, oralCompTeam: AppData.oralCompTeam, calculatorTeam: AppData.calculatorTeam, competitionName: competitionNameTextField.text!))
            saveCompetitionErrorLabel.text = "Competition saved!"
        } else {
            saveCompetitionErrorLabel.text = "Enter the competition name!"
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
