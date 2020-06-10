//
//  ListViewController.swift
//  SbakynskySA_HW_2.7
//
//  Created by Macbook on 10.06.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        
        if indexPath.row == 0 {
            cell.textLabel?.text = persons[indexPath.section].telNamber
            cell.imageView?.image = UIImage(systemName: "phone.circle.fill")
        }
        if indexPath.row == 1 {
            cell.textLabel?.text = persons[indexPath.section].email
            cell.imageView?.image = UIImage(systemName: "paperplane.fill")
        }
        return cell
    }
    
    
    
    override func tableView(_: UITableView, titleForHeaderInSection: Int) -> String? {
        
        let heder = "\(persons[titleForHeaderInSection].name) \(persons[titleForHeaderInSection].surname)"
        
        return heder
    }
    
    
}
