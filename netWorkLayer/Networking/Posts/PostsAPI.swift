//
//  PostsAPI.swift
//  netWorkLayer
//
//  Created by Farido on 10/01/2022.
//

import Foundation

protocol UsersAPIProtocol {
    func getUsers(completion: @escaping (Result<Post?, NSError>) -> Void)
}


class UsersAPI: BaseAPI<UsersNetworking>, UsersAPIProtocol {
    
    //MARK:- Requests
    
    func getUsers(completion: @escaping (Result<Post?, NSError>) -> Void) {
        self.fetchData(target: .getUsers, responseClass: Post.self) { (result) in
            completion(result)
        }
    }
}
