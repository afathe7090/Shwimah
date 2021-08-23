//
//  SearchVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class SearchVC: UIViewController {
//MARK:- Outlet
     
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    //MARK:- Constant
    var counter = 0
    
    
    //MARK:- ViewDidload
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    //MARK:- Action
    @IBAction func upAndDownButoon(_ sender: UIButton) {
        if counter == 0 {
            sender.setImage(#imageLiteral(resourceName: "upArrow"), for: .normal)
            counter += 1
        }else{
            sender.setImage(#imageLiteral(resourceName: "downArrow"), for: .normal)
            counter -= 1
        }
    }
    
    @IBAction func searchButton(_ sender: Any) {
        
        
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    
    
    //MARK:- Helper Function
    @IBAction func hoursesBTN(_ sender: UIButton) {
        
    }
    
    
    
    
}

//MARK:- Extintion
extension SearchVC: UICollectionViewDelegate ,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionCell", for: indexPath) as!SearchCollectionCell
        cell.imageCollectionHourse.image = imageCell[indexPath.row]
        cell.nameOfCollectionHourse.text = nameHourse[indexPath.row]
        return cell
    }
    
    
    // I Don't Know what Doing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    // space With containt view Horizontali
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 25)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    
}
