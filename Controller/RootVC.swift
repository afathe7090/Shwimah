//
//  RootVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class RootVC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
       navigationController?.navigationBar.prefersLargeTitles = true
    }
    

 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
   
}
