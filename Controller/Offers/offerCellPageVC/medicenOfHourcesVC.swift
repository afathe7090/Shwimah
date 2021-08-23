//
//  medicenOfHourcesVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 30/03/2021.
//

import UIKit

class medicenOfHourcesVC: UIViewController {

    //MARK:- Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUi()
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
    
    // setup the nib file to the TableView
    func setUpUi(){
        tableView.register(UINib(nibName: "medicenOfHourcesCell", bundle: nil), forCellReuseIdentifier: "medicenOfHourcesCell")
        tableView.tableFooterView = UIView()
    }
    
}

//MARK:- Extenstion

extension medicenOfHourcesVC: UITableViewDelegate , UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameOfMedicenPage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "medicenOfHourcesCell") as! medicenOfHourcesCell
        cell.dataOfTitle.text = nameOfMedicenPage[indexPath.row]
        cell.nameOfData.text = nameOfHospital[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
