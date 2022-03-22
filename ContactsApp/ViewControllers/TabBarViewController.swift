//
//  TabBarViewController.swift
//  ContactsApp
//
//  Created by Валерия Смецкая on 22.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let viewControllers = viewControllers else { return }
        
        viewControllers.forEach {
            if let contactListVC = $0 as? ContactsListViewController {
                contactListVC.persons = persons
            } else if let infoVC = $0 as? InfoContactsViewController {
                infoVC.persons = persons
            }
        }
    }
}
