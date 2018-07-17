//
//  Demo.swift
//  YUSimpleGallery
//
//  Created by Michael Yudin on 17.07.2018.
//  Copyright © 2018 Michael Yudin. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    var galleryContainer: YUSimpleGalleryContainer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        galleryContainer = segue.destination as! YUSimpleGalleryContainer
        galleryContainer.delegate = self
    }
}

extension DemoViewController: YUSimpleGalleryProtocol {
    func cancel(_ container: YUSimpleGalleryContainer) {
        
    }
    
    func done(_ container: YUSimpleGalleryContainer, selected: [Any]) {
        selected.forEach { item in
            if let item = item as? UIImage {
                self.view.addSubview(UIImageView(image: item))
            }
        }
    }
    
    
}
