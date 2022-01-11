//
//  ViewController.swift
//  netWorkLayer
//
//  Created by Farido on 10/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let api: UsersAPIProtocol = UsersAPI()
        api.getUsers { (result) in
            switch result {
            case .success(let response):
                let users = response
                for user in users ?? [] {
                    print("\(user.id ?? 0) => \(user.title ?? "")")
                }
            case .failure(let error):
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "")
            }
        }
    }
}



