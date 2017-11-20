//
//  ChecklistTableViewController.swift
//  Checklist
//
//  Created by Gabriel Breshears on 11/17/17.
//  Copyright © 2017 Gabriel Breshears. All rights reserved.
//

import UIKit

class ChecklistTableViewController: UIViewController {
    
    var items: [ChecklistItem] = [ChecklistItem]()
    
    required init?(coder aDecoder: NSCoder) {
        
        
        let row0item = ChecklistItem()
        row0item.text = "Pay bills"
        row0item.checked = false
        items.append(row0item)
        
        let row1item = ChecklistItem()
        row1item.text = "Walk the dog"
        row1item.checked = true
        items.append(row1item)
        
        let row2item = ChecklistItem()
        row2item.text = "CODE SWIFT"
        row2item.checked = true
        items.append(row2item)
        
        let row3item = ChecklistItem()
        row3item.text = "Push to github"
        row3item.checked = false
        items.append(row3item)
        
        let row4item = ChecklistItem()
        row4item.text = "Go to bed"
        row4item.checked = false
        items.append(row4item)
        super.init(coder: aDecoder)
    }
    
    @IBOutlet private weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
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
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let item = items[indexPath.row]
        
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath){
            let item = items[indexPath.row]
            item.toggleChecked()
            configureCheckmark(for: cell, with: item)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        // 1
        
        items.remove(at: indexPath.row)
        
        //2
        
        let indexPaths = [indexPath]
        tableview.deleteRows(at: indexPaths, with: .automatic)
    }
    
    
    func configureCheckmark(for cell: UITableViewCell,
                            with item: ChecklistItem) {
        
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem){
        
        if let label = cell.viewWithTag(1000) as? UILabel{
            label.text = item.text
        }
    }
    
    @IBAction func addItem(){
        let newRowItem = items.count
        
        
        let item: ChecklistItem = ChecklistItem()
        item.text = "New Row"
        item.checked = true
        items.append(item)
        
        // Finds the index path based on the how many items are in the array then inserts the new row
        let indexPath = IndexPath(row: newRowItem, section: 0)
        let indexPaths = [indexPath]
        tableview.insertRows(at: indexPaths, with: .right)
        
        
        
        
    }
    
    
}
