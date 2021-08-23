//
//  TabBarViewController.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
        setUpBarImage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //MARK:- Function
    func setUpBarImage(){
        
        // creat view For put the Image in it
        let heeader = UIView(frame: CGRect(x: 0, y: 0, width: 75, height: 75))

        //creat Image 
        let imageTabBar = UIImageView(frame: CGRect(x: 10 , y: 10, width: 50, height: 50))
        imageTabBar.image = #imageLiteral(resourceName: "barHourse")
        imageTabBar.contentMode = .scaleAspectFill
        
        // add the image in view
        heeader.addSubview(imageTabBar)
        
        // creat the view in left Bar Assume it Button
        let imageHorse = UIBarButtonItem(customView: heeader)
        self.navigationItem.leftBarButtonItem = imageHorse
    }
    
    
    
    //MARK:- Action
    
    //MARK:- Search Button
    @IBAction func searchViewController(_ sender: Any) {
        let search = storyboard?.instantiateViewController(identifier: "SearchVC") as! SearchVC
        search.modalTransitionStyle = .crossDissolve
        search.modalPresentationStyle = .fullScreen
        present(search, animated: true, completion: nil)
    }
    

}
