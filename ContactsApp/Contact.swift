//
//  Contact.swift
//  ContactsApp
//
//  Created by Валерия Смецкая on 22.03.2022.
//

struct Contact {
    let name: String
    let surname: String
    let phoneNumber: Int
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
