//
//  offersVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class offersVC: UIViewController {

    //MARK:- OutLet
    @IBOutlet weak var collectionOfferView: UICollectionView!
    
    
    //MARK:- viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    
    //MARK:- Function
    
    // function for cell to go to the page of this cell and get name of function is identifier of this indexpath
    func goFromSection(identifier: String){
        let cell = storyboard?.instantiateViewController(identifier: identifier)
        cell!.modalPresentationStyle = .fullScreen
        cell!.modalTransitionStyle = .crossDissolve
        present(cell!, animated: true, completion: nil)
    }
    
    

}

//MARK:- Extention

extension offersVC: UICollectionViewDelegate , UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageOFOfferCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "offerCollectionCell", for: indexPath) as! offerCollectionCell
        
        //data of image and LBL of cell
        cell.imageOfOffer.image = imageOFOfferCell[indexPath.row]
        cell.offerLBL.text = labeldataOffer[indexPath.row]
        
        return cell
    }
    
    // I Don't Know what Doing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    // space With containt view Horizontali
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 30)
    }
    
    
    // Function to go to the page of the cell Using Function to go to this page
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            goFromSection(identifier:  "OfferOfHoursesVC")
        }else if indexPath.row == 1{
            goFromSection(identifier: "medicenOfHourcesVC")
        }else if indexPath.row == 2{
            goFromSection(identifier: "NeededForHoursesVC" )
        }else if indexPath.row == 3{
            goFromSection(identifier: "jobsAndProffissionVC")
        }
    
 
    }
    
}
