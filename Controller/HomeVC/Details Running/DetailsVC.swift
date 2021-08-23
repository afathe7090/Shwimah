//
//  DetailsVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 30/03/2021.
//

import UIKit

class DetailsVC: UIViewController {
    

    // MARK:- Outlet
    @IBOutlet weak var imageDetails: UIImageView!
    @IBOutlet weak var titleOfImage: UILabel!
    @IBOutlet weak var aboutLBLDitails: UILabel!
    
    
    //MARK:-Constants

    var imagePage: UIImage?
    var titleImage = ""
    

    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVC()
    }
    

    // View Will Appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    
    
    //MARK:- Function
    func setUpVC(){
        imageDetails.image = imagePage
        titleOfImage.text = titleImage
        aboutLBLDitails.text = detaile
    }
    
    

}
