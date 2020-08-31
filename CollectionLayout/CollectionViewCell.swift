//
//  CollectionViewCell.swift
//  CollectionLayout
//
//  Created by nguyen viet hoang on 8/31/20.
//  Copyright © 2020 nguyen viet hoang. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CollectionViewCell"

    static func nib() -> UINib {
           return UINib(nibName: "CollectionViewCell", bundle: nil)
       }
    
    @IBOutlet weak var imgAva: UIImageView!
    @IBOutlet weak var lbAva: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func configure(description: String, imageName: String) {
        lbAva.text = description
        imgAva.image = UIImage(named: imageName)
    }
    override func layoutSubviews() {
        
        self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 6.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.masksToBounds = true
        
      
        self.contentView.layer.cornerRadius = 15.0
        self.contentView.layer.borderWidth = 6.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true

    }
    
}
