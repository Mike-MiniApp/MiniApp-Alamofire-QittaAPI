//
//  Article.swift
//  MiniApp-Alamofire-QittaAPI
//
//  Created by 近藤米功 on 2022/04/01.
//

import Foundation
struct Article: Codable{
    let title: String
    let updated_at: String
    let url: String
    let user: User
}

struct User: Codable{
    let id: String
}
