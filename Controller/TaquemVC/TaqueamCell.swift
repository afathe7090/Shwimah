//
//  TaqueamCell.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class TaqueamCell: UITableViewCell {
    //MARK:- OutLet
    
    @IBOutlet weak var collectionViewCell: UICollectionView!
    @IBOutlet weak var dateOfYear: UILabel!
    
    
    var month = [String]()
    var data = [String]()

    
    
    //MARK:- ViewDidLoad
    override func awakeFromNib() {
        super.awakeFromNib()
        
        defineCollecction()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    //MARK:-Function

    // Nib Cell Define in The Table
    func defineCollecction(){
        collectionViewCell.register(UINib(nibName: "TqueamCollectionCell", bundle: nil), forCellWithReuseIdentifier: "TqueamCollectionCell")
    }
    
    //function To Get Data from the Cell
    func setUPCollection(month: [String] , data: [String]){
        self.month = month
        self.data = data
    }
    
}
//MARK:- extension
extension TaqueamCell: UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return month.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TqueamCollectionCell", for: indexPath) as! TqueamCollectionCell
        
        cell.monthLBLTaqueam.text = month[indexPath.row]
        cell.numberOfDataInMonth.text = data[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // size of Cell
        return CGSize(width: WedthScreen / 3 - 20 , height: 100)
    }
    
    
}
