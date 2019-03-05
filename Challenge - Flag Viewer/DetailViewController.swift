//
//  DetailViewController.swift
//  Challenge - Flag Viewer
//
//  Created by Fabio on 05/03/2019.
//  Copyright © 2019 JohnMutina. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var flagImage: UIImageView!
    
    var selectedFlag: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // if a flag has been selected
        if let flagToLoad = selectedFlag {
            // set the image equal to the selected flag
            flagImage.image = UIImage(named: flagToLoad)
        }
        
        // add a button to the nav controller which calls the shareTapped method
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
    }
    // create the method to share items
    @objc func shareTapped() {
        // create an activity on the images
        let vc = UIActivityViewController(activityItems: [flagImage.image!], applicationActivities: [])
        // link the action to the button to the right of the nav controller
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        // present the activity
        present(vc, animated: true)
    }

}
