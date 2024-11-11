//
//  CompetitionsViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 11/7/24.
//

import UIKit

class CompetitionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var competitionsTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        competitionsTableView.delegate = self
        competitionsTableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppData.competitions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell7 = tableView.dequeueReusableCell(withIdentifier: "myCell7") as! CompetitionCell

        cell7.competitionLabel.text = AppData.competitions[indexPath.row].competitionName
        
        return cell7

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
