//
//  pageController.swift
//  app1
//
//  Created by 林婷婷 on 2018/7/18.
//  Copyright © 2018 Tina Lee. All rights reserved.
//

import UIKit

class pageController: UIViewController , UIScrollViewDelegate{

    @IBOutlet weak var pagecontrol: UIPageControl!
    @IBOutlet weak var scrollview: UIScrollView!
    
    var images : [String]  = ["0","1"]
    var frame = CGRect(x:0,y:0,width:0,height:0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pagecontrol.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = scrollview.frame.size.width*CGFloat(index)
            frame.size = scrollview.frame.size
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.scrollview.addSubview(imgView)
        }
        scrollview.contentSize = CGSize(width: (scrollview.frame.size.width*CGFloat(images.count)), height: scrollview.frame.size.height)
        scrollview.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var pageNumber = scrollview.contentOffset.x / scrollview.frame.size.width
        pagecontrol.currentPage = Int(pageNumber)
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
