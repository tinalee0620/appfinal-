//
//  SecondViewController.swift
//  app1
//
//  Created by Tina Lee on 2018/6/26.
//  Copyright © 2018年 Tina Lee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

   
    @IBOutlet weak var ImageView: UIImageView!
    @IBAction func importimage(_ sender: Any) {
        
            let image = UIImagePickerController()
            image.delegate = self
            image.sourceType = UIImagePickerControllerSourceType.photoLibrary
            image.allowsEditing = false
            self.present(image,animated: true)
            {
                //After it is complete
            }
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
            if let image = info[UIImagePickerControllerOriginalImage]as?UIImage{
                
                ImageView.image = image
            }
            else{
                ImageView.image = nil
                //Error message
            }
            self.dismiss(animated: true, completion: nil)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

