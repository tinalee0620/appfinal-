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
        Restaurant(name: "Your postcard has been sent.", type: "mon", location: "840高雄市大樹區學城路1段153號義大皇家酒店LB大廳樓層", phone: "view the post card", image: "postcard1.jpg", isVisited: false),
        Restaurant(name: "Your postcard has been sent.", type: "2018.5.30", location: "840高雄市大樹區學城路1段153號義大皇家酒店LB大廳樓層", phone: "view the post card", image: "postcard2.jpg", isVisited: false),
        Restaurant(name: "Teddy Attack accept you friend request.", type: "2018.5.14", location: "827高雄市燕巢區義大路1號", phone: "view this friend's ID", image: "莊1.png", isVisited: false),
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! RestaurantTableViewCell
        
        // Configure the cell...
        //cell.textLabel?.text = restaurants[indexPath.row].name
        //cell.imageView?.image = UIImage(named: restaurants[indexPath.row].image)
        cell.nameLabel.text = restaurants[indexPath.row].name
        cell.typeLabel.text = restaurants[indexPath.row].type
        cell.thumnailImageView.image = UIImage(named: restaurants[indexPath.row].image)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let optionMenu = UIAlertController(title: nil, message: "請選擇", preferredStyle: .actionSheet)
        // 加上打電話動作
        // TODO: Call Phone handler
        let callAction = UIAlertAction(title: " \(restaurants[indexPath.row].phone)", style: .default, handler: nil)
        optionMenu.addAction(callAction)
        // 加上"取消"動作
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        optionMenu.addAction(cancelAction)
        present(optionMenu,animated: true,completion: nil)
    }
    
    // Swipe-to-delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            restaurants.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
