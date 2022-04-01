//
//  RequestArticle.swift
//  MiniApp-Alamofire-QittaAPI
//
//  Created by 近藤米功 on 2022/04/01.
//

import Foundation
import Alamofire
protocol CatchDataDelegate{
    func catchDataArticleInfo(title: String,updateAt: String,url: String,id: String)
}

class RequestArticle{
    var delegate: CatchDataDelegate?
    func request(index: Int){
        let urlString = "https://qiita.com/api/v2/items"
        AF.request(urlString).responseJSON { response in
            guard let data = response.data else{
                return
            }
            do{
                let articles = try JSONDecoder().decode([Article].self, from: data)
                print(articles[index].title)
                print(articles[index].updated_at)
                print(articles[index].url)
                print(articles[index].user.id)
                self.delegate?.catchDataArticleInfo(title: articles[index].title, updateAt: articles[index].updated_at, url: articles[index].url, id: articles[index].user.id)
            }catch{
            }
        }
    }
}
