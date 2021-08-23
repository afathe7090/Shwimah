//
//  NeededForHoursesCell.swift
//  Shwimah
//
//  Created by AhmedFathy on 30/03/2021.
//

import UIKit

class NeededForHoursesCell: UITableViewCell {
    //MARK:- Outlet
    @IBOutlet weak var imageOfNeededCell: UIImageView!
    @IBOutlet weak var nameOfCompanyLBL: UILabel!
    
    
    
    
    //MARK:- ViewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
