//
//  BaseResponse.swift
//  netWorkLayer
//
//  Created by Mohamed Ragab on 10/01/2022.
//

class BaseResponse<T: Codable>: Codable {
    var page: Int?
    var data: T?
    
    enum CodingKeys: String, CodingKey {
        case page = "page"
        case data = "data"
    }
}
