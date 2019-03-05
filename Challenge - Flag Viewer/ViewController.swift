//
//  ViewController.swift
//  Challenge - Flag Viewer
//
//  Created by Fabio on 05/03/2019.
//  Copyright © 2019 JohnMutina. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var flags = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // define path to get the pictures names
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        // get only files with .png suffix and append them to the flags array
        for item in items {
            if item.hasSuffix(".png") {
                flags.append(item)
            }
        }
    }

    

}

// Name of cell: Flag Cell
