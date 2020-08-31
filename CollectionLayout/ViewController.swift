//
//  ViewController.swift
//  CollectionLayout
//
//  Created by nguyen viet hoang on 8/31/20.
//  Copyright © 2020 nguyen viet hoang. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    var cellIdentifier = "CollectionViewCell"
    var photos = [
    (description: "Mô tả cho ảnh 1", imageName: "anh1"),
    (description: "Mô tả cho ảnh 2", imageName: "anh2"),
    (description: "Mô tả cho ảnh 3", imageName: "anh3"),
    (description: "Mô tả cho ảnh 4", imageName: "anh4"),
    (description: "Mô tả cho ảnh 5", imageName: "anh5"),
    (description: "Mô tả cho ảnh 6", imageName: "anh6"),
    (description: "Mô tả cho ảnh 7", imageName: "anh7")]
    
    var collectionViewFlowLayout: UICollectionViewFlowLayout!
    let id = "CollectionViewCell"
    
    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: id)
        collection.delegate = self
        collection.dataSource = self
        
        let customLayout = PinterestLayout()
        customLayout.delegate = self
        collection.collectionViewLayout = customLayout
        
    }
    

}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, PinterestLayoutDelegate{
    func collectionView(_ collectionView: UICollectionView, sizeOfPhotoAtIndexPath indexPath: IndexPath) -> CGSize {
        return UIImage(named: photos[indexPath.row].imageName)!.size

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: id, for: indexPath) as! CollectionViewCell
        cell.imgAva.image = UIImage(named: photos[indexPath.item].imageName)
        cell.lbAva.text = photos[indexPath.item].description
        return cell
    }
    
    
}
