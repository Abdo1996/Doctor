//
//  sub.swift
//  doctor
//
//  Created by Abdelrahman Ahmed Shawky on 2/17/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import UIKit
import ObjectMapper
class sub: NSObject,Mappable {

    /*"sub_ar": [
     {
     "name": "باطنة وجهاز هضمي",
     "id": 8,
     "id_main": 1,
     "doctorkind": [
     {
     "id_sub": 8,
     "id_doctor_kind": 1,
     "doctor_kind_ar": {
     "id": 1,
     "name": "زياره منزليه"
     */
    var id:Int?
    var name:String?
    var id_main:Int?
    var doktorKind:doctorkind?
    override init() {
        super.init()
    }
    convenience required init?(map: Map) {
        self.init()
    }
    func mapping(map: Map) {
        id <- map["id"]
        id_main <- map["id_main"]
        name <- map["name"]
        doktorKind <- map["doctorkind"]
        
    }
    
}
