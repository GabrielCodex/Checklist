//
//  ChecklistTableViewController.swift
//  Checklist
//
//  Created by Gabriel Breshears on 11/17/17.
//  Copyright © 2017 Gabriel Breshears. All rights reserved.
//

import UIKit

class ChecklistTableViewController: UIViewController {
    
    let row0item: ChecklistItem
    let row1item: ChecklistItem
    let row2item: ChecklistItem
    let row3item: ChecklistItem
    let row4item: ChecklistItem
    
    var row0checked = false
    var row1checked = false
    var row2checked = false
    var row3checked = false
    var row4checked = false
    
    required init?(coder aDecoder: NSCoder) {
        row0item = ChecklistItem()
        row0item.text = "Pay bills"
        row0item.checked = false
        
        row1item = ChecklistItem()
        row1item.text = "Walk the dog"
        row1item.checked = true
        
        row2item = ChecklistItem()
        row2item.text = "CODE SWIFT"
        row2item.checked = true
        
        row3item = ChecklistItem()
        row3item.text = "Push to github"
        row3item.checked = false
        
        row4item = ChecklistItem()
        row4item.text = "Go to bed"
        row4item.checked = false
        
        super.init(coder: aDecoder)
    }
    
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
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = row0item.text
        } else if indexPath.row == 1 {
            label.text = row1item.text
        } else if indexPath.row == 2 {
            label.text = row2item.text
        } else if indexPath.row == 3 {
            label.text = row3item.text
        } else if indexPath.row == 4 {
            label.text = row4item.text
        }
        
        configureCheckmark(for: cell, at: indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        if indexPath.row == 0 {
            row0item.checked = !row0item.checked
        } else if indexPath.row == 1 {
            row1item.checked = !row1item.checked
        } else if indexPath.row == 2 {
            row2item.checked = !row2item.checked
        } else if indexPath.row == 3 {
            row3item.checked = !row3item.checked
        } else if indexPath.row == 4 {
            row4item.checked = !row4item.checked
        }
        
        
        
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    func configureCheckmark(for cell: UITableViewCell,
                               at indexPath: IndexPath) {
        var isChecked = false
        
        if indexPath.row == 0 {
            isChecked = row0item.checked
        } else if indexPath.row == 1 {
            isChecked = row1item.checked
        } else if indexPath.row == 2 {
            isChecked = row2item.checked
        } else if indexPath.row == 3 {
            isChecked = row3item.checked
        } else if indexPath.row == 4 {
            isChecked = row4item.checked
        }
        
        
        if isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }

    
    
}
