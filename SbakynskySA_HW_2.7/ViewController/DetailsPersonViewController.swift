//
//  DetailsPersonViewController.swift
//  SbakynskySA_HW_2.7
//
//  Created by Macbook on 10.06.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

class DetailsPersonViewController: UIViewController {

    @IBOutlet weak var telNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    override func viewDidLoad() {
        super.viewDidLoad()
        telNumberLabel.text = person.telNamber
        emailLabel.text = person.email
        self.navigationItem.title = "\(person.name) \(person.surname)"
       
    }
    

}
