//
//  TripTableViewCell.swift
//  Travelogue
//
//  Created by Deng tianyuan on 5/10/19.
//  Copyright © 2019 Deng tianyuan. All rights reserved.
//

import UIKit

class TripTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tripTitleLabel: UILabel!
    @IBOutlet weak var tripDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
