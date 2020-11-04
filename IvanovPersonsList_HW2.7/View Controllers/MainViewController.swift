//
//  MainViewController.swift
//  IvanovPersonsList_HW2.7
//
//  Created by Admin on 04.11.2020.
//

import UIKit

class MainViewController: UITabBarController {

    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let destinationViewControllers = viewControllers,
           !destinationViewControllers.isEmpty {
            for destinationVC in destinationViewControllers {
                if let vc = destinationVC as? PersonsListViewController {
                    vc.persons = persons
                } else if let vc = destinationVC as? DetailListViewController {
                    vc.persons = persons
                }
            }
        }
    }

}
