//
//  YUSimpleGalleryContainer.swift
//  YUSimpleGallery
//
//  Created by Michael Yudin on 17.07.2018.
//  Copyright © 2018 Michael Yudin. All rights reserved.
//

import UIKit

protocol YUSimpleGalleryProtocol {
    func cancel(_ container:YUSimpleGalleryContainer)
    func done(_ container:YUSimpleGalleryContainer, selected: [Any])
}

class YUSimpleGalleryContainer: UIViewController {
    
    @IBOutlet weak var doneButton: UIButton!
    var gallery: YUSimpleGallery!
    var delegate: YUSimpleGalleryProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func doneButtonDidTapped(_ sender: Any) {
        guard let selectedPaths = gallery.collectionView?.indexPathsForSelectedItems else { return }
        let selectedImages = selectedPaths.map { ip -> UIImage in
            return gallery.images[ip.row]
        }
        delegate.done(self, selected: selectedImages)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "embedYUSimpleGallery") {
            gallery = segue.destination as! YUSimpleGallery
        }
    }
    
}
