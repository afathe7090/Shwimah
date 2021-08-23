//
//  DetailsRunningVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 31/03/2021.
//

import UIKit

class DetailsRunningVC: UIViewController {

    //MARK:- OutLet
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        nibAdd()
        
    }
    

    //MARK:- Helper Function
    
    func nibAdd(){
        tableView.register(UINib(nibName: "detailsPageCells", bundle: nil), forCellReuseIdentifier: "detailsPageCells")
        tableView.register(UINib(nibName: "resultCell", bundle: nil), forCellReuseIdentifier: "resultCell")
        tableView.tableFooterView = UIView()
    }

    //MARK:-Action
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
//MARK:- Extention
extension DetailsRunningVC: UITableViewDelegate ,UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleCell.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row ==  titleCell.count  {
            let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell") as! resultCell
            return cell
        }else {
       
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailsPageCells") as! detailsPageCells
            cell.nameTable.text = titleCell[indexPath.row]
            cell.dataOfTitle.text = titleCell[indexPath.row]
            return cell
        }
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == titleCell.count {
            return 150
        }else {
            return 50
        }
    }
    
    
}
