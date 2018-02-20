//
//  gender.swift
//  doctor
//
//  Created by Abdelrahman Ahmed Shawky on 2/17/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import UIKit
import ObjectMapper
class gender: NSObject,Mappable {
    /*
     "gender": [
     {
     "name": "Male",
     "id": 1
     }
     */
    
    var id:Int?
    var name:String?
    override init() {
        super.init()
    }
    convenience required init?(map: Map) {
        self.init()
    }
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
    }
    
}
