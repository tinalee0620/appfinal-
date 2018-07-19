//
//  stampViewController.swift
//  app1
//
//  Created by Tina Lee on 2018/6/27.
//  Copyright © 2018年 Tina Lee. All rights reserved.
//

import UIKit

class stampViewController: UIViewController {

    @IBOutlet weak var vc: UIView!
    var stampview1:UIView!
    var stampview2:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stampview1 = stamp1().view
        stampview2 = stamp2().view
        vc.addSubview(stampview1)
        vc.addSubview(stampview2)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func svc(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            vc.bringSubview(toFront: stampview1)
            break
        case 1:
            vc.bringSubview(toFront: stampview2)
            break
        default:
            break
        }
    }

}
