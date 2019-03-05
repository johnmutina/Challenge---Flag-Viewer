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

        if let flagToLoad = selectedFlag {
            flagImage.image = UIImage(named: flagToLoad)
        }
    }
    
    

}
