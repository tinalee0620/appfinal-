//
//  homeswich.swift
//  app1
//
//  Created by Tina Lee on 2018/6/27.
//  Copyright © 2018年 Tina Lee. All rights reserved.
//

import UIKit

class homeswich: UIViewController {

    @IBOutlet weak var viewcontainer: UIView!
    var simpleView1:UIView!
    var simpleView2:UIView!
    var simpleView3:UIView!
    
    @IBOutlet weak var leading: NSLayoutConstraint!
    var menuShow = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        simpleView1 = simpleVC1().view
        simpleView2 = simpleVC2().view
        simpleView3 = simpleVC3().view
        viewcontainer.addSubview(simpleView1)
        viewcontainer.addSubview(simpleView2)
        viewcontainer.addSubview(simpleView3)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func menu(_ sender: Any) {
        if(menuShow){
            leading.constant = -250
        }else{
            leading.constant = 0
            
            UIView.animate(withDuration: 0.2) {
                self.view.layoutIfNeeded()
            }
            
            
        }
        menuShow = !menuShow
    }
    @IBAction func switchView(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            viewcontainer.bringSubview(toFront: simpleView1)
            break
        case 1:
            viewcontainer.bringSubview(toFront: simpleView2)
            break
        case 2:
            viewcontainer.bringSubview(toFront: simpleView3)
            break
        default:
            break
    }
    }
}
