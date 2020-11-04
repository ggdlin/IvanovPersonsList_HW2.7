//
//  PersonsListViewController.swift
//  IvanovPersonsList_HW2.7
//
//  Created by Admin on 04.11.2020.
//

import UIKit

class PersonsListViewController: UITableViewController {

    var persons: [Person]!
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsCell", for: indexPath)
        cell.textLabel?.text = persons[indexPath.row].fullName
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactVC = segue.destination as! ContactViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactVC.person = persons[indexPath.row]
    }

}


