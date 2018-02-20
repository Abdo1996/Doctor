//
//  doctorkind.swift
//  doctor
//
//  Created by Abdelrahman Ahmed Shawky on 2/17/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import UIKit
import ObjectMapper
class doctorkind: NSObject,Mappable {
    /*
     "doctorkind": [
     {
     "id_sub": 14,
     "id_doctor_kind": 2
     */
    var doctor_kind:state?
    var id_sub:Int?
    var id_doctor_kind:Int?
    override init() {
        super.init()
    }
    convenience required init?(map: Map) {
        self.init()
    }
    func mapping(map: Map) {
        id_sub <- map["id_sub"]
        id_doctor_kind <- map["id_doctor_kind"]
        doctor_kind <- map["doctor_kind_en"]
    }
}
