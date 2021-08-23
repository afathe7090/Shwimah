//
//  OfferOfHoursesVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 30/03/2021.
//

import UIKit

class OfferOfHoursesVC: UIViewController {

    //MARK:- Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nibAdd()
    }
    
    //MARK:- Action
    @IBAction func searshButtonPressed(_ sender: Any) {
        
        // Function to Go To Search Page
        let goToSearch = storyboard?.instantiateViewController(identifier: "SearchVC") as! SearchVC
        goToSearch.modalTransitionStyle = .crossDissolve
        goToSearch.modalPresentationStyle = .fullScreen
        present(goToSearch, animated: true, completion: nil)
    }
    
    
    //backButton Pressed
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    //MARK:- Helper Function
    func nibAdd(){
        
        // nib data from Nib
        tableView.register(UINib(nibName: "OfferOfHoursesCell", bundle: nil), forCellReuseIdentifier: "OfferOfHoursesCell")
        tableView.tableFooterView = UIView()
    }
    
}

//MARK:- Extenstion
extension OfferOfHoursesVC: UITableViewDelegate , UITableViewDataSource{
    
    //Number Of Scetion we Need to loop it
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // number of  section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameOfHourses.count
    }
    
    //func cell of data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OfferOfHoursesCell") as! OfferOfHoursesCell
        
        //Data Cell
        cell.nameOfOffer.text = nameOfHourses[indexPath.row]
        cell.imageOfOfferCell.image = imageOfHourses[indexPath.row]
        return cell
    }
    
    //Func to height of cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    // func to deselct row of section
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
