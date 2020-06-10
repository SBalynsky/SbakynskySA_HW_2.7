//
//  ContactsTableViewController.swift
//  SbakynskySA_HW_2.7
//
//  Created by Macbook on 09.06.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

 let persons = Person.newPersons()

class ContactsTableViewController: UITableViewController {

    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsList", for: indexPath)

        cell.textLabel?.text = "\(persons[indexPath.row].name) \(persons[indexPath.row].surname)"
        return cell
    }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let indexPath = tableView.indexPathForSelectedRow  else { return }
        let destinationVC = segue.destination as! DetailsPersonViewController
        destinationVC.person = persons[indexPath.row]
    }
}
