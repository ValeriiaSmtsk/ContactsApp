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
    
    static func getContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        for _ in 1...10 {
            let contact = Contact(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? 0,
                email: emails.randomElement() ?? ""
            )
            contacts.append(contact)
        }
        return contacts
    }
}

