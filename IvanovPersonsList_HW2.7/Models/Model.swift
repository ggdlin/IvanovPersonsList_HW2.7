//
//  Model.swift
//  IvanovPersonsList_HW2.7
//
//  Created by Admin on 04.11.2020.
//

struct Person {
    let name: String
    let surname: String
    let telephone: String
    let email: String
    var fullName: String {
        "\(name) \(surname)"
    }
}



extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager()
        
        if dataManager.names.count == dataManager.surnames.count &&
            dataManager.names.count == dataManager.telephones.count &&
            dataManager.names.count == dataManager.emails.count {
            
            
            for _ in 0..<dataManager.names.count {
                let range = 0..<dataManager.names.count
                let name =  dataManager.names.remove(at: Int.random(in: range))
                let surname = dataManager.surnames.remove(at: Int.random(in: range))
                let telephone = dataManager.telephones.remove(at: Int.random(in: range))
                let email = dataManager.emails.remove(at: Int.random(in: range))
                persons.append(Person(name: name, surname: surname, telephone: telephone, email: email))
            }
        } else {
            print("Quantity of arrays elements not accordance, check dataManager data!")
        }
        return persons
    }
}

class DataManager {
    var names = [
        "Carl",
        "John",
        "Tim",
        "Nicola",
        "Sharon",
        "Aaron",
        "Steven",
        "Bruce",
        "Allan",
        "Ted"
    ]
    var surnames = [
        "Robertson",
        "Butler",
        "Pennyworth",
        "Murphy",
        "Smith",
        "Black",
        "Isaacson",
        "Dow",
        "Williams",
        "Jankins"
    ]
    var telephones = [
        "946543210",
        "916532111",
        "957832112",
        "986165413",
        "785416314",
        "946352615",
        "933543116",
        "846352317",
        "987654618",
        "954346319"
    ]
    var emails = [
        "aaaa@mail.ru",
        "bbbb@mail.ru",
        "cccc@mail.ru",
        "dddd@mail.ru",
        "eeee@mail.ru",
        "ffff@mail.ru",
        "gggg@mail.ru",
        "hhhh@mail.ru",
        "iiii@mail.ru",
        "kkkk@mail.ru"
    ]
}
