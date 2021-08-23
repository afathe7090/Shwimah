//
//  IntelegantHoursesVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 31/03/2021.
//

import UIKit

class IntelegantHoursesVC: UIViewController {
    //MARK:- OutLet
    @IBOutlet weak var tabeView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        nibAdd()
    }
    
    //MARK:-Helper Function
    
    func nibAdd(){
        tabeView.register(UINib(nibName: "cellBlack", bundle: nil), forCellReuseIdentifier: "cellBlack")
        tabeView.tableFooterView = UIView()
    }
    
    
    
    //MARK:- Action
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
//MARK:- Extention
extension IntelegantHoursesVC:UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabeView.dequeueReusableCell(withIdentifier: "cellBlack") as! cellBlack
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
