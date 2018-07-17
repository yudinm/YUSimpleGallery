//
//  YUSimpleGalleryCell.swift
//  YUSimpleGallery
//
//  Created by Michael Yudin on 17.07.2018.
//  Copyright © 2018 Michael Yudin. All rights reserved.
//

import UIKit

class YUSimpleGalleryCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var checkImage: UIImageView!
    override var isSelected: Bool {
        didSet {
            if (isSelected) {
                checkImage.image = UIImage(named: "checked")
                return
            }
            checkImage.image = UIImage(named: "unchecked")
        }
    }
    
    func configure(image: UIImage) { // TODO: add support image urls
        imageView.contentMode = .scaleAspectFill
        imageView.image = image
        checkImage.image = UIImage(named: "unchecked")
    }
    
    
}
