//
//  DetailListViewController.swift
//  IvanovPersonsList_HW2.7
//
//  Created by Admin on 04.11.2020.
//

import UIKit

class DetailListViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)

        let person = persons[indexPath.section]
        switch indexPath.row {
            case 0:
                cell.textLabel?.text = person.email
                cell.imageView?.image = UIImage(named: "email.png")
            case 1:
                cell.textLabel?.text = person.telephone
                cell.imageView?.image = UIImage(named: "phone.png")
            default: break
        }
        return cell
    }
}
