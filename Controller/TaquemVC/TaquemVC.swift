//
//  TaquemVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class TaquemVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- Constants
    var dataSetUp = [dataTaqueam]()
    
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPDate()
        nibCell()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    // Data of Cell All label And years
    func setUPDate(){
        dataSetUp.append(dataTaqueam(years: "2020", mounth: ["اكتوبر" , "نوفمبر" ,"ديسمبر" ], dataOfCollection: ["( سباقات 10)","سباقات 8","سباقات 5"]))
        dataSetUp.append(dataTaqueam(years: "2021", mounth: ["يناير" , "فبراير" ,"مارس" ], dataOfCollection: ["( سباقات 10)","سباقات 8","سباقات 5"]))
    }
    
    
    //function Nib Add In table View
    func nibCell(){
        tableView.register(UINib(nibName: "TaqueamCell", bundle: nil), forCellReuseIdentifier: "TaqueamCell")
        tableView.tableFooterView = UIView()
    }

}


//MARK:- extension
extension TaquemVC: UITableViewDelegate ,UITableViewDataSource {
    
    
    // Number Of Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSetUp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaqueamCell", for: indexPath) as! TaqueamCell
        
        // Creat obJect from Var Data To Useful Use Data In It
        let finalData = dataSetUp[indexPath.row]
        cell.dateOfYear.text = finalData.years
        cell.setUPCollection(month: finalData.mounth, data: finalData.dataOfCollection)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = storyboard?.instantiateViewController(identifier: "TaqueamDataCollction") as! TaqueamDataCollction
        present(cell, animated: true, completion: nil)
    }
}
