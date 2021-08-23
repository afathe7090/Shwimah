//
//  ViewController.swift
//  Shwimah
//
//  Created by AhmedFathy on 29/03/2021.
//

import UIKit

class ChooseLanguage: UIViewController {
    //MARK:- Outlet
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageController: UIPageControl!
    
    
    
    
    //MARK:-Constants

    
    let imageCell:[UIImage] = [#imageLiteral(resourceName: "Image-1"),#imageLiteral(resourceName: "Image-2")]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    //MARK:-Action
    @IBAction func arabicButtonPressed(_ sender: Any) {
        goToRoot()
    }
    
    
    @IBAction func englishButtonPressed(_ sender: Any) {
        goToRoot()
    }
    
    

    
    //MARK:-Helper Function
  
    func goToRoot(){
        let goToRoot = storyboard?.instantiateViewController(withIdentifier: "RootVC") as! RootVC
        goToRoot.modalPresentationStyle = .fullScreen
        goToRoot.modalTransitionStyle = .flipHorizontal
        present(goToRoot, animated: true, completion: nil)
    }

}

//MARK:-Extension

extension ChooseLanguage:UICollectionViewDelegate ,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageLanguageCell", for: indexPath) as! imageLanguageCell
        cell.imageCell.image = imageCell[indexPath.row]
        return cell
    }
    
    
}
