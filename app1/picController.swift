//
//  picController.swift
//  app1
//
//  Created by 林婷婷 on 2018/7/19.
//  Copyright © 2018 Tina Lee. All rights reserved.
//

import UIKit

class picController: UIViewController {

    @IBOutlet weak var pic: UIImageView!
    
    @IBAction func stamp(_ sender: Any) {
        pic.image = UIImage(named: "stamp1")
    }
    
    @IBAction func stamp1(_ sender: Any) {
        pic.image = UIImage(named: "stamp2")
    }
    
    @IBAction func stamp3(_ sender: Any) {
        pic.image = UIImage(named: "stamp4")
    }
    @IBAction func stamp2(_ sender: Any) {
        pic.image = UIImage(named: "stamp10")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
