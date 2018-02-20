//
//  categoryModel.swift
//  doctor
//
//  Created by Abdelrahman Ahmed Shawky on 2/17/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import UIKit
import ObjectMapper

class categoryModel: NSObject,Mappable {
    /*
     "id": 2,
     "name": "Nurse",
     "sub_en": []
     }
     ]*/
    var id:Int?
    var name:String?
    var sub:sub?
    override init() {
        super.init()
    }
    convenience required init?(map: Map) {
        self.init()
    }
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        sub <- map["sub_en"]
    }

}
