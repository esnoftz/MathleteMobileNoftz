//
//  ScheduleProfileViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 12/6/24.
//

import UIKit

class ScheduleProfileViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        var compName = AppData.schedule[AppData.indexSelected].compName
        var compDate = AppData.schedule[AppData.indexSelected].date
        var compTime = AppData.schedule[AppData.indexSelected].time
        var compLoc = AppData.schedule[AppData.indexSelected].loc
        var compTeams = AppData.schedule[AppData.indexSelected].teams
        
        
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
