//
//  SaveCompetitionViewController.swift
//  MathleteMobileNoftz
//
//  Created by David Noftz on 11/11/24.
//

import UIKit

class SaveCompetitionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!

    @IBOutlet weak var saveCompetitionErrorLabel: UILabel!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        picker.delegate = self
        picker.dataSource = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return AppData.schedule.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return AppData.schedule[row].compName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        AppData.indexSelected = row
        //print(row)
        
    }

    //TEST THIS LATER
    @IBAction func saveCompetitionAction(_ sender: UIButton) {
        
        if AppData.indexSelected == -1 {
            AppData.indexSelected = 0
        }
        
        // put this code into action for save current competition button (swap order of vcs)
        
        /*AppData.competitions.append(Competition(froshSophTeam: AppData.froshSophTeam, jrSrTeam: AppData.jrSrTeam, twoPersonTeam: AppData.twoPersonTeam, oralCompTeam: AppData.oralCompTeam, calculatorTeam: AppData.calculatorTeam, competitionName: AppData.schedule[AppData.indexSelected].compName))
            AppData.froshSophTeam = [Student]()
            AppData.jrSrTeam = [Student]()
            AppData.twoPersonTeam = [Student]()
            AppData.oralCompTeam = [Student]()
            AppData.calculatorTeam = [Student]()
            saveCompetitionErrorLabel.text = "Competition saved!"*/
       
        
    }
    
    

}
