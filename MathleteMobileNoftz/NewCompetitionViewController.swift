//
//  NewCompetitionViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 12/6/24.
//

import UIKit

class NewCompetitionViewController: UIViewController {

    @IBOutlet weak var compNameOutlet: UITextField!
    
    @IBOutlet weak var compDateOutlet: UITextField!
    
    @IBOutlet weak var compStartTimeOutlet: UITextField!
    
    @IBOutlet weak var compLocationOutlet: UITextField!
    
    @IBOutlet weak var compTeamsOutlet: UITextField!
    
    @IBOutlet weak var newCompErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    

    @IBAction func addToScheduleAction(_ sender: UIButton) {
        
        var name = compNameOutlet.text
        var date = compDateOutlet.text
        var start = compStartTimeOutlet.text
        var location = compLocationOutlet.text
        var teams = compTeamsOutlet.text
        
       
        if name == "" || date == "" || start == "" || location == "" || teams == "" {
            newCompErrorLabel.text = "Answer all prompts!"
        } else {            
            AppData.schedule.append(ScheduleInfo(compName: name!, date: date!, time: start!, loc: location!, teams: teams!))
            compNameOutlet.text = ""
            compDateOutlet.text = ""
            compStartTimeOutlet.text = ""
            compLocationOutlet.text = ""
            compTeamsOutlet.text = ""
            newCompErrorLabel.text = "Competition added to schedule!"
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
