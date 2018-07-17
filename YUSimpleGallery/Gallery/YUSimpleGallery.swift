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
        self.collectionView?.allowsMultipleSelection = true
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

extension YUSimpleGallery {
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: { context in
            let isPortrait = size.height > size.width
            let layout = self.collectionView?.collectionViewLayout as! YUSimpleGalleryFlowLayout
            layout.updateLayout(collectionView: self.collectionView!, isPortrait: isPortrait)
        }, completion: nil)
    }
}
