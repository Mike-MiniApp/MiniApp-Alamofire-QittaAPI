//
//  ViewController.swift
//  MiniApp-Alamofire-QittaAPI
//
//  Created by 近藤米功 on 2022/04/01.
//

import UIKit

class ViewController: UIViewController, CatchDataDelegate{
    
    private var requestAriticle = RequestArticle()
    @IBOutlet private weak var articleSegmentedControl: UISegmentedControl!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var updateAtLabel: UILabel!
    @IBOutlet private weak var urlLabel: UILabel!
    @IBOutlet private weak var idLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        requestAriticle.delegate = self
    }

    @IBAction private func requestButton(_ sender: Any) {
        let index = articleSegmentedControl.selectedSegmentIndex
        requestAriticle.request(index: index)
    }
    func catchDataArticleInfo(title: String, updateAt: String, url: String, id: String) {
        titleLabel.text = title
        updateAtLabel.text = updateAt
        urlLabel.text = url
        idLabel.text = id
    }
    
}

