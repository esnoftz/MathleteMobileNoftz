//
//  CreateTeamsViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 11/7/24.
//

import UIKit

class CreateTeamsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if AppData.scheduleIndex == -1 {
            AppData.scheduleIndex = 0
        }

    }
    
    
    
    @IBAction func saveTeamsAction(_ sender: UIButton) {
        
        if AppData.scheduleIndex == -1 {
            AppData.scheduleIndex = 0
        }
        
        print(AppData.scheduleIndex)
        
        AppData.competitions.append(Competition(froshSophTeam: AppData.froshSophTeam, jrSrTeam: AppData.jrSrTeam, twoPersonTeam: AppData.twoPersonTeam, oralCompTeam: AppData.oralCompTeam, calculatorTeam: AppData.calculatorTeam, competitionName: AppData.schedule[AppData.scheduleIndex].compName))
        print("Competitions \(AppData.competitions.count)")
            AppData.froshSophTeam = [Student]()
            AppData.jrSrTeam = [Student]()
            AppData.twoPersonTeam = [Student]()
            AppData.oralCompTeam = [Student]()
            AppData.calculatorTeam = [Student]()
            //saveCompetitionErrorLabel.text = "Competition saved!"
        
        //performSegue(withIdentifier: "backToHomeSegue", sender: nil)
        self.navigationController?.popViewController(animated: true)

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
