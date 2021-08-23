//
//  TaqueamTableViewCell.swift
//  Shwimah
//
//  Created by AhmedFathy on 30/03/2021.
//

import UIKit

class TaqueamTableViewCell: UITableViewCell {

    //MARK:- Outlet
    
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var madarLBL: UILabel!
    @IBOutlet weak var kingLBL: UILabel!
    @IBOutlet weak var destanceLBL: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
