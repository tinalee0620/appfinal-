//
//  button.swift
//  app1
//
//  Created by Tina Lee on 2018/6/26.
//  Copyright © 2018年 Tina Lee. All rights reserved.
//

import UIKit

class button: UIButton{
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth=2/UIScreen.main.nativeScale
        layer.borderColor=UIColor.lightGray.cgColor
        layer.cornerRadius = 18;
        
    }
}
