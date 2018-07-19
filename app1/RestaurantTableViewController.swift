//
//  RestaurantTableViewController.swift
//  app1
//
//  Created by 林婷婷 on 2018/7/19.
//  Copyright © 2018 Tina Lee. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Your postcard has been sent", type: "餐廳", location: "840高雄市大樹區學城路1段153號義大皇家酒店LB大廳樓層", phone: "07-6568166#21205", image: "postcard1.jpg", isVisited: false),
        Restaurant(name: "Your postcard has been sent", type: "港式飲茶餐廳", location: "840高雄市大樹區學城路1段153號義大皇家酒店LB大廳樓層", phone: "07-6568166#21402", image: "postcard2.jpg", isVisited: false),
        Restaurant(name: "Teddy Attack accept you friend...", type: "餐廳", location: "827高雄市燕巢區義大路1號", phone: "07-6150011", image: "莊1.png", isVisited: false),
        ]
    
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = restaurants[indexPath.row].name
        cell.imageView?.image = UIImage(named: restaurants[indexPath.row].image)
        
        return cell
    }
}
