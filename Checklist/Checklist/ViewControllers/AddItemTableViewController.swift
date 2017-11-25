//
//  AddItemTableViewController.swift
//  Checklist
//
//  Created by Gabriel Breshears on 11/25/17.
//  Copyright © 2017 Gabriel Breshears. All rights reserved.
//

import UIKit

class AddItemTableViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
    
}
    
    extension AddItemTableViewController: UITableViewDelegate, UITableViewDataSource{
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: UITableViewCell = UITableViewCell()
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return 1
        }
}
