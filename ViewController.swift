//
//  ViewController.swift
//  Burnetto
//
//  Created by O16Labs on 11/21/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    
    var webView : WKWebView!
    @IBOutlet var loadSpinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        loadSpinner.isHidden = false
        loadSpinner.startAnimating()
        if UserDefaults.standard.string(forKey: "url") != nil {
            if let savedURL = UserDefaults.standard.value(forKey: "url") as? String {
                let url = NSURL(string: "\(savedURL)")
                let request = NSURLRequest(url: url! as URL)
                webView = WKWebView(frame: self.view.frame)
                webView.scrollView.bounces = false
                webView.navigationDelegate = self
                webView.load(request as URLRequest)
                self.view.addSubview(webView)
            }
        }
        else {
            let url = NSURL(string: "https://www.google.com")
            let request = NSURLRequest(url: url! as URL)
            webView = WKWebView(frame: self.view.frame)
            webView.scrollView.bounces = false
            webView.navigationDelegate = self
            webView.load(request as URLRequest)
            self.view.addSubview(webView)
        }
        
    }
    
    func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError) {
        print(error.localizedDescription)
    }
    func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Strat to load")
    }
    func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
        print("finish to load")
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
    }
}


