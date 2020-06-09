//
//  Model.swift
//  SbakynskySA_HW_2.7
//
//  Created by Macbook on 09.06.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

struct Person {
    let name: String
    let surname: String
    let telNamber: String
    let email: String
}


extension Person {
    static func newPersons() -> [Person] {
        var persons: [Person] = []
        
        DataManager.names.shuffle()
        DataManager.surnames.shuffle()
        DataManager.telefonNambers.shuffle()
        DataManager.emails.shuffle()
        
        for index in 0...9 {
            let person = Person(name: DataManager.names[index],
                                surname: DataManager.surnames[index],
                                telNamber: DataManager.telefonNambers[index],
                                email: DataManager.emails[index])
            
            persons.append(person)
        }
        return persons
    }    
}
