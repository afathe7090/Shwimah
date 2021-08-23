//
//  BestHoursesVC.swift
//  Shwimah
//
//  Created by AhmedFathy on 31/03/2021.
//

import UIKit

class BestHoursesVC: UIViewController {
    //MARK:- Outlet
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    //MARK:- ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK:- Action
    @IBAction func searchButtonPressed(_ sender: Any) {
        let search = storyboard?.instantiateViewController(identifier: "SearchVC") as! SearchVC
        search.modalTransitionStyle = .crossDissolve
        search.modalPresentationStyle = .fullScreen
        present(search, animated: true, completion: nil)
    }
    

    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}


//MARK:- Extenstion
extension BestHoursesVC: UICollectionViewDelegate ,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BestHoursesCell", for: indexPath) as! BestHoursesCell
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
        
        let cell = storyboard?.instantiateViewController(identifier: "DetailsHoursesVC") as! DetailsHoursesVC
        cell.modalPresentationStyle = .fullScreen
        cell.modalTransitionStyle = .flipHorizontal
        present(cell, animated: true, completion: nil)
    }
    
}
