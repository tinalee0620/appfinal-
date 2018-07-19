//
//  pageController2.swift
//  app1
//
//  Created by 林婷婷 on 2018/7/18.
//  Copyright © 2018 Tina Lee. All rights reserved.
//


import UIKit

class pageController2: UIViewController , UIScrollViewDelegate{
    
    @IBOutlet weak var pagecontrol2: UIPageControl!
    @IBOutlet weak var scrollview2: UIScrollView!
    
    var images : [String]  = ["4","5"]
    var frame = CGRect(x:0,y:0,width:0,height:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pagecontrol2.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = scrollview2.frame.size.width*CGFloat(index)
            frame.size = scrollview2.frame.size
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.scrollview2.addSubview(imgView)
        }
        scrollview2.contentSize = CGSize(width: (scrollview2.frame.size.width*CGFloat(images.count)), height: scrollview2.frame.size.height)
        scrollview2.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func scrollViewDidEndDecelerating(_ scrollView1: UIScrollView) {
        var pageNumber2 = scrollview2.contentOffset.x / scrollview2.frame.size.width
        pagecontrol2.currentPage = Int(pageNumber2)
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

