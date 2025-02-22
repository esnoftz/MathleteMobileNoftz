//
//  ScheduleViewController.swift
//  MathleteMobileNoftz
//
//  Created by EVANGELINE NOFTZ on 12/6/24.
//

import UIKit

class ScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var scheduleTableView: UITableView!
    
    @IBOutlet weak var scheduleErrorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scheduleTableView.delegate = self
        scheduleTableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        scheduleTableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "scheduleProfileSegue", sender: nil)
        AppData.indexSelected = indexPath.row
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppData.schedule.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell8 = tableView.dequeueReusableCell(withIdentifier: "myCell8") as! ScheduleCell
        
        cell8.scheduleLabelOutlet.text = AppData.schedule[indexPath.row].compName
        
        return cell8
        
    }
    
    /* Source: https://www.hackingwithswift.com/example-code/uikit/how-to-swipe-to-delete-uitableviewcells*/
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            AppData.schedule.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
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
