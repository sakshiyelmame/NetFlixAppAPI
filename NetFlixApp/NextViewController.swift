//
//  NextViewController.swift
//  NetFlixApp
//
//  Created by Sakshi Yelmame on 16/03/23.
//

import UIKit
import WebKit
class NextViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var myWebView: WKWebView!
    
    var url : String = ""
    override func viewDidLoad() {
        myWebView.navigationDelegate = self
        loadUrl()
        super.viewDidLoad()

    }
    func loadUrl() {
        if let url = URL(string: url) {
            let urlRequest = URLRequest(url: url)
            myWebView.load(urlRequest)
        }
    }

    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print("Load webpage\(error.localizedDescription)")
    }

}
