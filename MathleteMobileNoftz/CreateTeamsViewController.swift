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

    }
    
    
    @IBAction func saveTeamsAction(_ sender: UIButton) {
        
        print(AppData.indexSelected)
        
        AppData.competitions.append(Competition(froshSophTeam: AppData.froshSophTeam, jrSrTeam: AppData.jrSrTeam, twoPersonTeam: AppData.twoPersonTeam, oralCompTeam: AppData.oralCompTeam, calculatorTeam: AppData.calculatorTeam, competitionName: AppData.schedule[AppData.indexSelected].compName))
            AppData.froshSophTeam = [Student]()
            AppData.jrSrTeam = [Student]()
            AppData.twoPersonTeam = [Student]()
            AppData.oralCompTeam = [Student]()
            AppData.calculatorTeam = [Student]()
            //saveCompetitionErrorLabel.text = "Competition saved!"

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
