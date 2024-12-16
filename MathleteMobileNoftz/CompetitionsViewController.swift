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
    
    override func viewWillAppear(_ animated: Bool) {
        // competitionsTableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        AppData.indexSelected = -1
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "competitionViewSegue", sender: nil)
        AppData.indexSelected = indexPath.row
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //AppData.competitions.count
        print("Schedule count \(AppData.schedule.count)")
        print("Competition count \(AppData.competitions.count)")
        return AppData.competitions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell7 = tableView.dequeueReusableCell(withIdentifier: "myCell7") as! CompetitionCell
        
        cell7.competitionLabel.text = AppData.competitions[indexPath.row].competitionName
        
        return cell7
        
    }
    
    
    
    /* Source: https://www.hackingwithswift.com/example-code/uikit/how-to-swipe-to-delete-uitableviewcells*/
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            AppData.competitions.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
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
}
