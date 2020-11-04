//
//  ContactViewController.swift
//  IvanovPersonsList_HW2.7
//
//  Created by Admin on 04.11.2020.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.telephone
        emailLabel.text = person.email
        navigationItem.title = person.fullName
    }

}
