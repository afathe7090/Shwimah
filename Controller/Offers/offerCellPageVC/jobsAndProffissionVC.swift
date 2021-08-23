//
//  jobsAndProffissionVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 30/03/2021.
//

import UIKit

class jobsAndProffissionVC: UIViewController {

    //MARK:- Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        nibAdd()
        
    }
    
    //MARK:- Action
    @IBAction func searshButtonPressed(_ sender: Any) {
        
        //Go To search Page
        let goToSearch = storyboard?.instantiateViewController(identifier: "SearchVC") as! SearchVC
        goToSearch.modalTransitionStyle = .crossDissolve
        goToSearch.modalPresentationStyle = .fullScreen
        present(goToSearch, animated: true, completion: nil)
    }
    
    //back Button
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    //MARK:- Helper Function
    
    
    func nibAdd(){
        
        // Nib File add To Table View
        tableView.register(UINib(nibName: "jobsAndProffissionCell", bundle: nil), forCellReuseIdentifier: "jobsAndProffissionCell")
        tableView.tableFooterView = UIView()
    }
    
}

//MARK:- Extenstion


extension jobsAndProffissionVC: UITableViewDelegate ,UITableViewDataSource {
    
    // Number if Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameOFDoctor.count
    }
    
    // data of Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jobsAndProffissionCell") as! jobsAndProffissionCell
        cell.doctorName.text = nameOFDoctor[indexPath.row]
        return cell
    }
    
    //Func to height of cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}
