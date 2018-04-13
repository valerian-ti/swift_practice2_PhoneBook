//
//  ContactTableViewCell.swift
//  PhoneBook app
//
//  Created by mac on 12/04/2018.
//  Copyright © 2018 intern. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var contactImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
