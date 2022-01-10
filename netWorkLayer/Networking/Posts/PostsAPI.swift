//
//  PostsAPI.swift
//  netWorkLayer
//
//  Created by Farido on 10/01/2022.
//

import Foundation

protocol UsersAPIProtocol {
    func getUsers(completion: @escaping (Result<BaseResponse<[UserModel]>?, NSError>) -> Void)
}


class UsersAPI: BaseAPI<UsersNetworking>, UsersAPIProtocol {
    
    //MARK:- Requests
    
    func getUsers(completion: @escaping (Result<BaseResponse<[UserModel]>?, NSError>) -> Void) {
        self.fetchData(target: .getUsers, responseClass: BaseResponse<[UserModel]>.self) { (result) in
            completion(result)
        }
    }
}
