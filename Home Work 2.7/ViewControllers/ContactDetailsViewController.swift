//
//  ContactDetailsViewController.swift
//  Home Work 2.7
//
//  Created by Дмитрий Бородулькин on 02.07.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
    }


}
