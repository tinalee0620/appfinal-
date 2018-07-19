//
//  TableViewController.swift
//  app1
//
//  Created by Tina Lee on 2018/6/27.
//  Copyright © 2018年 Tina Lee. All rights reserved.
//

import UIKit

var myIndex = 0

    
class TableViewController: UITableViewController {
    var name = ""
    var dateweak = ""
    var image = ""
    var isVisited = false
    init(name: String, dateweak: String, image: String,
         isVisited: Bool) {
        self.name = name
        self.dateweak = dateweak
        self.image = image
        self.isVisited = isVisited
        
    var TableViewController:[UITableViewController] = [
        UITableViewController(name: "Your post card has been sent.", dateweak: "Mon", image: "postcard3.jpg", isVisited: false),
        UITableViewController(name: "Your post card has been sent.", dateweak: "2018.5.20", image: "postcard6.jpg", isVisited: false),
        UITableViewController(name: "Teddy Attack accept your friend...", dateweak: "2018.5.14", image: "莊.png", isVisited: false),
            ]

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return message.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = message[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    
}
