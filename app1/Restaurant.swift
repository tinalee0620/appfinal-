//
//  Restaurant.swift
//  app1
//
//  Created by 林婷婷 on 2018/7/19.
//  Copyright © 2018 Tina Lee. All rights reserved.
//

import Foundation
class Restaurant {
    var name = ""
    var type = ""
    var location = ""
    var phone = ""
    var image = ""
    var isVisited = false
    init(name: String, type: String, location: String, phone: String, image: String,
         isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.image = image
        self.isVisited = isVisited
    }
}
