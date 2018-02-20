//
//  dataSingup.swift
//  doctor
//
//  Created by Abdelrahman Ahmed Shawky on 2/17/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import UIKit
import ObjectMapper
class dataSingup: NSObject,Mappable {
    
    var genders:[gender]?
    var states:[state]?
    var languges:[languageModel]?
    var cities:[citiesModel]?
    var categories:[categoryModel]?
    
    override init() {
        super.init()
    }
    convenience required init?(map: Map) {
        self.init()
    }
    func mapping(map: Map) {
        genders <- map["gender"]
        states <- map["state"]
        languges <- map["language"]
        cities <- map["cities"]
        categories <- map["category"]
        
        
    }
    
    
}
