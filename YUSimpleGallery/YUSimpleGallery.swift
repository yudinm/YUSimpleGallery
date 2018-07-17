//
//  YUSimpleGallery.swift
//  YUSimpleGallery
//
//  Created by Michael Yudin on 17.07.2018.
//  Copyright © 2018 Michael Yudin. All rights reserved.
//

import UIKit

class YUSimpleGallery: UICollectionViewController {
  
    let images: [UIImage] = [UIImage(named: "img1")!,
                             UIImage(named: "img2")!,
                             UIImage(named: "img3")!,
                             UIImage(named: "img4")!,
                             UIImage(named: "img5")!,
                             UIImage(named: "img6")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView?.collectionViewLayout = YUSimpleGalleryFlowLayout(collectionView: collectionView!)
    }


}

extension YUSimpleGallery {

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.images.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let row = indexPath.row
        let image = images[row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "YUSimpleGalleryCell", for: indexPath) as! YUSimpleGalleryCell
        cell.configure(image: image)
        return cell        
    }
    
}
