//
//  NeededForHoursesVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 30/03/2021.
//

import UIKit

class NeededForHoursesVC: UIViewController {


    //MARK:- Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        nibAdd()
        
    }
    
    //MARK:- Action
    @IBAction func searshButtonPressed(_ sender: Any) {
        let goToSearch = storyboard?.instantiateViewController(identifier: "SearchVC") as! SearchVC
        goToSearch.modalTransitionStyle = .crossDissolve
        goToSearch.modalPresentationStyle = .fullScreen
        present(goToSearch, animated: true, completion: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    //MARK:- Helper Function
    func nibAdd(){
        tableView.register(UINib(nibName: "NeededForHoursesCell", bundle: nil), forCellReuseIdentifier: "NeededForHoursesCell")
        tableView.tableFooterView = UIView()
    }
    
}

//MARK:- Extenstion

extension NeededForHoursesVC: UITableViewDelegate , UITableViewDataSource {
    
    //Number of Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameOfNeeded.count
    }
    
    // Data of cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NeededForHoursesCell") as! NeededForHoursesCell
        cell.nameOfCompanyLBL.text = nameOfNeeded[indexPath.row]
        cell.imageOfNeededCell.image = imageOfCompanyNeeded[indexPath.row]
        return cell
    }
    
    // Deselect Row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
