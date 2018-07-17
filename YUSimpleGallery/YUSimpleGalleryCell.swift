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
    
    func configure(image: UIImage) { // TODO: add support image urls
        imageView.contentMode = .scaleAspectFill
        imageView.image = image
    }
}
