//
//  citiesModel.swift
//  doctor
//
//  Created by Abdelrahman Ahmed Shawky on 2/17/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import UIKit
import ObjectMapper
class citiesModel: NSObject,Mappable {

    var id:Int?
    var name:String?
    var id_government:Int?
    override init() {
        super.init()
    }
    convenience required init?(map: Map) {
        self.init()
    }
    func mapping(map: Map) {
        id <- map["id"]
         id <- map["id_government"]
        name <- map["name"]
    }
}
