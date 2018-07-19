//
//  editpageController.swift
//  app1
//
//  Created by 林婷婷 on 2018/7/18.
//  Copyright © 2018 Tina Lee. All rights reserved.
//

import UIKit

class editpageController: UIViewController , UIScrollViewDelegate{
    
    @IBOutlet weak var editpagecontrol: UIPageControl!
    @IBOutlet weak var editscrollview: UIScrollView!
    
    var images : [String]  = ["postcard6","pic5"]
    var frame = CGRect(x:0,y:0,width:0,height:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        editpagecontrol.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = editscrollview.frame.size.width*CGFloat(index)
            frame.size = editscrollview.frame.size
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.editscrollview.addSubview(imgView)
        }
        editscrollview.contentSize = CGSize(width: (editscrollview.frame.size.width*CGFloat(images.count)), height: editscrollview.frame.size.height)
        editscrollview.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func scrollViewDidEndDecelerating(_ scrollView1: UIScrollView) {
        var editpageNumber = editscrollview.contentOffset.x / editscrollview.frame.size.width
        editpagecontrol.currentPage = Int(editpageNumber)
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
