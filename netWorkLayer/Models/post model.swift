//
//  post model.swift
//  netWorkLayer
//
//  Created by Farido on 10/01/2022.
//

import Foundation

class UserModel: Codable {
    var name: String?
    var salary: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "employee_name"
        case salary = "employee_salary"
    }
}
