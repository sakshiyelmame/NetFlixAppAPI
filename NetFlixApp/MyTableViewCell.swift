//
//  MyTableViewCell.swift
//  NetFlixApp
//
//  Created by Sakshi Yelmame on 16/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    var navController: UINavigationController?
    @IBOutlet weak var myCollectionView: UICollectionView!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension MyTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let section = eData[myCollectionView.tag]
        let items = section.imageGallery.count
        return items
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! MyCollectionViewCell
        let eDataObj = eData[myCollectionView.tag]
        let imgName = eDataObj.imageGallery[indexPath.row].imageName
        cell.myImage.image = UIImage(named: imgName)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let main = UIStoryboard(name: "Main", bundle: .main)
        let nextVC = main.instantiateViewController(withIdentifier: "NextViewController") as!
        NextViewController
        let section =  eData[myCollectionView.tag]
        let imageGallery = section.imageGallery[indexPath.row]
        let url = imageGallery.trailerUrl
        nextVC.url = url
        navController?.pushViewController(nextVC, animated: true)

    }
    
}
