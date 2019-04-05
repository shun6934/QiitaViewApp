//
//  NewsViewController.swift
//  QiitaViewer
//
//  Created by shunichi hiraiwa on 2018/11/19.
//  Copyright © 2018年 shunichi. All rights reserved.
//

import UIKit
import WebKit

class NewsViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var topPadding:CGFloat = 0
    var url: String!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidAppear(_ animated: Bool){
        
        let screenWidth:CGFloat = view.frame.size.width
        let screenHeight:CGFloat = view.frame.size.height
        
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.keyWindow
            topPadding = window!.safeAreaInsets.top
        }
        
        let rect = CGRect(x: 0,
                          y: topPadding,
                          width: screenWidth,
                          height: screenHeight - topPadding)
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: rect, configuration: webConfiguration)
        
        let webUrl = URL(string: url)!
        let myRequest = URLRequest(url: webUrl)
        webView.load(myRequest)
        
        self.view.addSubview(webView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
