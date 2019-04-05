//
//  ArticleListViewController.swift
//  QiitaViewer
//
//  Created by shunichi hiraiwa on 2017/05/23.
//  Copyright © 2017年 shunichi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ArticleListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    var articles: [[String: String?]] = []
    var selectUrl: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getArticles()
    }
    
    func getArticles() {
        let _ = Alamofire.request("https://qiita.com/api/v2/items")
                .responseJSON { reponse in
                    guard let object = reponse.result.value else {
                        return
                    }
                    
                    let json = JSON(object)
                    json.forEach { (_, json) in
                        let article: [String: String?] = [
                        "title": json["title"].string,
                        "url": json["url"].string,
                        "userId": json["user"]["id"].string
                        ]
                        self.articles.append(article)
                    }
                    
                    self.table.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let article = articles[indexPath.row]
        cell.textLabel?.text = article["title"]!
        cell.detailTextLabel?.text = article["userId"]!
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newArticle = articles[indexPath.row]
        selectUrl = newArticle["url"]!
        performSegue(withIdentifier: "toNewsViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let NVC: NewsViewController = (segue.destination as? NewsViewController)!
        NVC.url = selectUrl
    }
}
