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
    
    /*
     Подозреваю что тут я намудрила, зато я понимаю как всё работает :)
     Я хотела чтобы была возможность отобразить контакт без почты или фамилии,
     и лучше чем это мне ничего в голову не пришло
     */
    
    static func getContacts() -> [Person] {
        var persons: [Person] = []
        let data = DataManager()
        
        var names = data.names.shuffled()
        var surnames = data.surnames.shuffled()
        var phoneNumbers = data.phoneNumbers.shuffled()
        var emails = data.emails.shuffled()
                
        for _ in 0..<phoneNumbers.count {
            var person: Person

            if surnames.isEmpty {
                person = Person(
                    name: names.removeFirst(),
                    surname: "",
                    phoneNumber: phoneNumbers.removeFirst(),
                    email: emails.removeFirst()
                )
            } else if emails.isEmpty {
                person = Person(
                    name: names.removeFirst(),
                    surname: surnames.removeFirst(),
                    phoneNumber: phoneNumbers.removeFirst(),
                    email: ""
                )
            } else if surnames.isEmpty && names.isEmpty {
                person = Person(
                    name: names.removeFirst(),
                    surname: "",
                    phoneNumber: phoneNumbers.removeFirst(),
                    email: ""
                )
            } else {
                person = Person(
                    name: names.removeFirst(),
                    surname: surnames.removeFirst(),
                    phoneNumber: phoneNumbers.removeFirst(),
                    email: emails.removeFirst()
                    )
            }
            persons.append(person)
        }
        return persons
    }
}
