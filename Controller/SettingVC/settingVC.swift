//
//  settingVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 30/03/2021.
//

import UIKit

class settingVC: UIViewController {
    //MARK:- Outlet
    @IBOutlet weak var tableView: UITableView!
    

    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        nibAdd()
    }
    
    //MARK:- Action
    
    @IBAction func uperAndDownBTNPressed(_ sender: Any) {
        
    }
    
    
    //MARK:- Helper Function

    func nibAdd(){
        tableView.register(UINib(nibName: "settingTableCell", bundle: nil), forCellReuseIdentifier: "settingTableCell")
        tableView.tableFooterView = UIView()
    }
    

    func presentCell (identifier: String){
        let cell = storyboard?.instantiateViewController(identifier: identifier)
        cell!.modalPresentationStyle = .fullScreen
        present(cell!, animated: true, completion: nil)
    }
    
    
}
//MARK:- Extenstion
extension settingVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameOfSetting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingTableCell") as! settingTableCell
        
        cell.imageSettingImage.image = imageOfSetting[indexPath.row]
        cell.nameSettingCell.text = nameOfSetting[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row == 0{
            presentCell(identifier: "RootVC")
        }else if indexPath.row == 2 {
            presentCell(identifier: "BestHoursesVC")
        }else if indexPath.row == 3 {
            presentCell(identifier: "intelegantMastView")
        }
    }
    
    
    
}

