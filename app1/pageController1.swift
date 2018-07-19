//
//  pageController1.swift
//  app1
//
//  Created by 林婷婷 on 2018/7/18.
//  Copyright © 2018 Tina Lee. All rights reserved.
//


import UIKit

class pageController1: UIViewController , UIScrollViewDelegate{
    
    @IBOutlet weak var pagecontrol1: UIPageControl!
    @IBOutlet weak var scrollview1: UIScrollView!
    
    var images : [String]  = ["2","3"]
    var frame = CGRect(x:0,y:0,width:0,height:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pagecontrol1.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = scrollview1.frame.size.width*CGFloat(index)
            frame.size = scrollview1.frame.size
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.scrollview1.addSubview(imgView)
        }
        scrollview1.contentSize = CGSize(width: (scrollview1.frame.size.width*CGFloat(images.count)), height: scrollview1.frame.size.height)
        scrollview1.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func scrollViewDidEndDecelerating(_ scrollView1: UIScrollView) {
        var pageNumber1 = scrollview1.contentOffset.x / scrollview1.frame.size.width
        pagecontrol1.currentPage = Int(pageNumber1)
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

