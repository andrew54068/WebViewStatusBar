//
//  ViewController.swift
//  WebViewStatusBar
//
//  Created by kidnapper on 2018/9/2.
//  Copyright © 2018 kidnapper. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView = WKWebView(frame: UIScreen.main.bounds)
        view.addSubview(webView)
        webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        webView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        webView.loadHTMLString("<p><iframe src=\"https://www.youtube.com/embed/HCjNJDNzw8Y\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>", baseURL: URL(string: "https://www.youtube.com/"))
        setNeedsStatusBarAppearanceUpdate()
    }
}

