//
//  HomeVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class HomeVC: UIViewController {
    //MARK:- OutLet
    @IBOutlet weak var tableViewHome: UITableView!
    
    
    
    //MARK:- Constants
    

    
    
    //MARK:- ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        nibData()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    

    //MARK:- Helper Function
    func nibData(){
        
        // Take The Data from Nib File To Known the Table View About This Nib
        tableViewHome.register(UINib(nibName: "HomeCellTableView", bundle: nil), forCellReuseIdentifier: "HomeCellTableView")
    }


}


//MARK:- Extention
extension HomeVC: UITableViewDelegate , UITableViewDataSource {
    
    // Number Of section We Used The Image table Becouse This array Have An Index Equal Another Of Array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagetable.count
    }
    
    //Cell of Date
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCellTableView", for: indexPath) as! HomeCellTableView
        
        //Cell Date From An Array
        cell.imageOfTable.image = imagetable[indexPath.row]
        cell.titelOfImage.text = titleOfImageLBL[indexPath.row]
        cell.datetailsOfTitleImag.text = detailsOfTitle[indexPath.row]
        
        return cell
    }
    
    
    //Height of Section
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return HeightScreen / 3 - 10
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        cell.imagePage = imagetable[indexPath.row]
        cell.titleImage = titleOfImageLBL[indexPath.row]
        navigationController?.pushViewController(cell, animated: true)
    }
    
    
    
    
}
