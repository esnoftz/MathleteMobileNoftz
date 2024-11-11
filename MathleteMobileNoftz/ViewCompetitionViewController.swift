//
//  ViewCompetitionViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 11/11/24.
//

import UIKit

class ViewCompetitionViewController: UIViewController {

    @IBOutlet weak var competitionNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        competitionNameLabel.text = AppData.competitions[AppData.indexSelected].competitionName
        
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
