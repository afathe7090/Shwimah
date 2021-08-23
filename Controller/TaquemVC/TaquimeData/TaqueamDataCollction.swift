//
//  TaqueamDataCollction.swift
//  Shwimah
//
//  Created by AhmedFathy on 30/03/2021.
//

import UIKit

class TaqueamDataCollction: UIViewController {

    //MARK:- Outlet
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTableCell()
    }
    //MARK:- Action
    
    @IBAction func searshButtonPressed(_ sender: Any) {
        let search = storyboard?.instantiateViewController(identifier: "SearchVC") as! SearchVC
        search.modalTransitionStyle = .crossDissolve
        search.modalPresentationStyle = .fullScreen
        present(search, animated: true, completion: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
    }
    
    //MARK:- Helper Function
    

    func setUpTableCell(){
        
        tableView.register(UINib(nibName: "TaqueamTableViewCell", bundle: nil), forCellReuseIdentifier: "TaqueamTableViewCell")
    }

}

//MARK:- extention

extension TaqueamDataCollction: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kind.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "TaqueamTableViewCell", for: indexPath) as! TaqueamTableViewCell
        
        Cell.dateLBL.text =  dateOfLBL
        Cell.destanceLBL.text = desance[indexPath.row]
        Cell.madarLBL.text = madarLBLData
        Cell.kingLBL.text = kind[indexPath.row]
        
        
        return Cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return HeightScreen / 5
    }
    
}
