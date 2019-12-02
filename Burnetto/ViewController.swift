//
//  ViewController.swift
//  Burnetto
//
//  Created by O16Labs on 11/21/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKUIDelegate {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if UserDefaults.standard.string(forKey: "url") != nil {
            if let savedURL = UserDefaults.standard.value(forKey: "url") as? String {
               self.view.addSubview(webView)
                let url = URL(string: savedURL)
                        webView.load(URLRequest(url: url!))
            }
            
            
         
        } else {
            self.view.addSubview(webView)
            let url = URL(string: "https://www.google.com")
            webView.load(URLRequest(url: url!))
        }
        
        
           
    }


}

