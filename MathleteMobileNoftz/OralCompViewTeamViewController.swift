//
//  OralCompViewTeamViewController.swift
//  MathleteMobileNoftz
//
//  Created by David Noftz on 11/11/24.
//

import UIKit

class OralCompViewTeamViewController: UIViewController {

    @IBOutlet weak var oralCompTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for person in AppData.oralCompTeam {
            oralCompTextView.text += "\(person.name)    (\(person.grade))\n"
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