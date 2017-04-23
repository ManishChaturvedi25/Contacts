//
//  ContactDetailController.swift
//  Contacts
//
//  Created by ctsuser1 on 4/22/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class ContactDetailController: UITableViewController {

    var contact: Contact?
    
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var eMailID: UILabel!
    @IBOutlet weak var steertName: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var zipCode: UILabel!
    
    //Header items
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSecondaryView()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func configureSecondaryView() {

        guard let contact = contact else {
            return
        }
        phoneNumber.text = contact.phone
        eMailID.text = contact.email
        steertName.text = contact.street
        city.text = contact.city
        state.text = contact.state
        zipCode.text = contact.zip
        
        personImage.image = contact.image
        
        fullNameLabel.text = "\(contact.firstName) \(contact.lastName)"
        
    }

 }
