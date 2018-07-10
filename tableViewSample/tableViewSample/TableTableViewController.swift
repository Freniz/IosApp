//
//  TableTableViewController.swift
//  tableViewSample
//
//  Created by Abdul Nizam Abdul Rahim on 09/07/2018.
//  Copyright © 2018 Abdul Nizam Abdul Rahim. All rights reserved.
//

import UIKit

var pets = ["dog", "cat", "rabbit"]
var petDesc = ["Dog is an animal that has four legs", "A cat is an animal that like to eat fish", "A rabbit is an animal that likes to jump around"]
var myindex = 0

class TableTableViewController: UITableViewController {

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = pets[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myindex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }

}
