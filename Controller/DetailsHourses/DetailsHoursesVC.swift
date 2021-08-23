//
//  DetailsHoursesVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 31/03/2021.
//

import UIKit

class DetailsHoursesVC: UIViewController {
    //MARK:- Outlet
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    
    //MARK:- Constans
    
  
    // make Var have gesture
    let imageAction = UITapGestureRecognizer()
    
    
    //MARK:-ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        nibAdd()
        gestureAction()
        
    }
    
    
    //MARK:-Action
    
    // Back Button
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //MARK:-Helper Function

    func nibAdd(){
        
        // Add Nib files to TableView
        tableView.register(UINib(nibName: "kindsOfHoursesCell", bundle: nil), forCellReuseIdentifier: "kindsOfHoursesCell")
        tableView.register(UINib(nibName: "DetailsFamilyCell", bundle: nil), forCellReuseIdentifier: "DetailsFamilyCell")
        tableView.register(UINib(nibName: "AchiveMentHouresesCell", bundle: nil), forCellReuseIdentifier: "AchiveMentHouresesCell")
        tableView.register(UINib(nibName: "bestProductCell", bundle: nil), forCellReuseIdentifier: "bestProductCell")
        tableView.register(UINib(nibName: "OwnerHoursesCell", bundle: nil), forCellReuseIdentifier: "OwnerHoursesCell")
        tableView.register(UINib(nibName: "SunHoursesCell", bundle: nil), forCellReuseIdentifier: "SunHoursesCell")
    }
    
   
    // Function Add Gesture for Image We can make image as Button
    func gestureAction(){
        imageView.isUserInteractionEnabled = true
        imageAction.addTarget(self, action: #selector(addActionGesture))
        imageView.addGestureRecognizer(imageAction)
    }
    
    //Action For Add To Gesture
    @objc func addActionGesture(){
        let goToPage = storyboard?.instantiateViewController(identifier: "imageViewVC") as! imageViewVC
        goToPage.modalPresentationStyle = .fullScreen
        goToPage.modalTransitionStyle = .crossDissolve
        present(goToPage, animated: true, completion: nil)
    }
    
}


//MARK:-Extenstion

extension DetailsHoursesVC: UITableViewDelegate ,UITableViewDataSource {
    
    //Number of Cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    
    //Function of Data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Going From Cell to View Controller All cell Have Permesion
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "kindsOfHoursesCell") as! kindsOfHoursesCell
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailsFamilyCell") as! DetailsFamilyCell
            return cell
        }else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AchiveMentHouresesCell") as! AchiveMentHouresesCell
            return cell
        }else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "bestProductCell") as! bestProductCell
            return cell
        }else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "OwnerHoursesCell") as! OwnerHoursesCell
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SunHoursesCell") as! SunHoursesCell
            return cell
        }
    
    }
    
}
