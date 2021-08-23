//
//  intelegantMastView.swift
//  Shwimah
//
//  Created by AhmedFathy on 31/03/2021.
//

import UIKit

class intelegantMastView: UIViewController {
    //MARK:- Outlet
    
    @IBOutlet weak var tabeView: UITableView!
    

    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        nibAdd()
    }
    //MARK:- Action
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func printButtonPressed(_ sender: Any) {
        let goToPrint = storyboard?.instantiateViewController(identifier: "IntelegantHoursesVC") as! IntelegantHoursesVC
        goToPrint.modalPresentationStyle = .fullScreen
        goToPrint.modalTransitionStyle = .flipHorizontal
        present(goToPrint, animated: true, completion: nil)
    }
    
    
    //MARK:- Helper Function
    
    func nibAdd(){
        tabeView.register(UINib(nibName: "intelegantPageCell", bundle: nil), forCellReuseIdentifier: "intelegantPageCell")
    }
    
}
//MARK:- Extention

extension intelegantMastView: UITableViewDelegate , UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabeView.dequeueReusableCell(withIdentifier: "intelegantPageCell") as! intelegantPageCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = storyboard?.instantiateViewController(identifier: "DetailsRunningVC") as! DetailsRunningVC
        cell.modalTransitionStyle = .flipHorizontal
        cell.modalPresentationStyle = .fullScreen
        present(cell, animated: true, completion: nil)
    }
    
}
