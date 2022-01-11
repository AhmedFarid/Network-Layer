//
//  PostNetworking.swift
//  netWorkLayer
//
//  Created by Farido on 10/01/2022.
//

import Foundation
import Alamofire

enum UsersNetworking {
    case getUsers
    case createUser(name: String, job: String)
}

extension UsersNetworking: TargetType {
    var baseURL: String {
        switch self {
        case .getUsers:
            return "https://jsonplaceholder.typicode.com"
        default:
            return "https://jsonplaceholder.typicode.com"
        }
    }
    
    var path: String {
        switch self {
        case .getUsers:
            return "/posts"
        case .createUser:
            return "/posts"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getUsers:
            return .get
        case .createUser:
            return .post
        }
    }
    
    var task: Task {
        switch self {
        case .getUsers:
            return .requestPlain
        case .createUser(let name, let job):
            return .requestParameters(parameters: ["name": name, "job": job], encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return [:]
        }
    }
}
