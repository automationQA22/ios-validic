//
//  DevicesCell.swift
//  Apollo360
//
//  Created by Bhushan Rana on 12/04/22.
//

import UIKit

class DevicesCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        nameLabel.textColor = .gray
        nameLabel.font = UIFont(name: "Avenir-Book", size: 17)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
