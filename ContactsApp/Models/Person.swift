//
//  Contact.swift
//  ContactsApp
//
//  Created by Валерия Смецкая on 22.03.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Person] {
        var contacts: [Person] = []
        let data = DataManager()
        
        var names = data.names.shuffled()
        var surnames = data.surnames.shuffled()
        var phoneNumbers = data.phoneNumbers.shuffled()
        var emails = data.emails.shuffled()
        
        
        for _ in 0..<data.names.count {
                let contact = Person(
                    name: names.removeFirst(),
                    surname: surnames.removeFirst(),
                    phoneNumber: phoneNumbers.removeFirst(),
                    email: emails.removeFirst()
                )
                contacts.append(contact)
            }
        return contacts
    }
}
