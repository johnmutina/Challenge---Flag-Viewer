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
    // create as many rows as we have flags
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }
    // create cells, change their text to the flag name and return them
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath)
        cell.textLabel?.text = flags[indexPath.row]
        return cell
    }

}

// Name of cell: Flag
