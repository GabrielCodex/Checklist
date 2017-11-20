//
//  ChecklistTableViewController.swift
//  Checklist
//
//  Created by Gabriel Breshears on 11/17/17.
//  Copyright © 2017 Gabriel Breshears. All rights reserved.
//

import UIKit

class ChecklistTableViewController: UIViewController {

    @IBOutlet private weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension ChecklistTableViewController: UITableViewDelegate, UITableViewDataSource{
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        if indexPath.row % 4 == 0 {
            label.text = "Walk the dog"
        } else if indexPath.row % 4  == 1 {
            label.text = "Get a job"
        } else if indexPath.row % 4 == 2 {
            label.text = "Text Lena a picture"
        } else if indexPath.row % 4 == 3 {
            label.text = "Do laundry"
        }
        
        return cell 
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
