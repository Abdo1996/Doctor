//
//  Api.swift
//  doctor
//
//  Created by Abdelrahman Ahmed Shawky on 2/17/18.
//  Copyright © 2018 andrew. All rights reserved.
//

import UIKit

import Alamofire
import AlamofireObjectMapper


class Api: NSObject {
    //http://haseboty.com/doctor/public/api/dataSingup?type=en
    class func getdataSingup(completion: @escaping ( _ gender:[gender]?,_ languge:[languageModel]?,_ city:[citiesModel]?,_ state:[state]?,_ category:[categoryModel]) -> Void) {
        let URL = "http://haseboty.com/doctor/public/api/dataSingup?type=en"
        Alamofire.request(URL).responseObject { (response: DataResponse<dataSingup>) in
            switch response.result {
            case .success:
                if let projectResponse = response.result.value{
                     let gender = projectResponse.genders
                    let languge = projectResponse.languges
                    let citys = projectResponse.cities
                    let state = projectResponse.states
                    let category = projectResponse.categories
//                    if let genders = projectResponse.genders{
//                        print(genders[0].name ?? "")
//                    }
//                    if let categoryArr = projectResponse.categories{
//                        // notice that you get arrays of gender or arrays of categories, ... etc
//                        print(categoryArr[0].name ?? "")
//                    }
                    completion(gender,languge,citys,state,category!)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
