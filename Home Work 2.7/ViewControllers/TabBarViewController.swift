//
//  TabBarViewController.swift
//  Home Work 2.7
//
//  Created by Дмитрий Бородулькин on 02.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
