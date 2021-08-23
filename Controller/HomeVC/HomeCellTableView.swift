//
//  HomeCellTableView.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class HomeCellTableView: UITableViewCell {
    @IBOutlet weak var imageOfTable: UIImageView!
    @IBOutlet weak var titelOfImage: UILabel!
    @IBOutlet weak var datetailsOfTitleImag: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
