//
//  MovieTrailerViewController.swift
//  Flixter_Project
//
//  Created by Jose Lopez on 2/24/21.
//

import UIKit
import WebKit
import AlamofireImage

class MovieTrailerViewController: UIViewController, WKUIDelegate {
    @IBOutlet weak var TrailerView: WKWebView!
    var webView: WKWebView!
    var movie: [String: Any]!
    override func loadView() {
          let webConfiguration = WKWebViewConfiguration()
          webView = WKWebView(frame: .zero, configuration: webConfiguration)
          webView.uiDelegate = self
          view = webView
      }
      override func viewDidLoad() {
        super.viewDidLoad()
        let moviekey = movie["key"] as! String
        let myURL = URL(string:"https://www.youtube.com/watch?v=" + moviekey )
               let myRequest = URLRequest(url: myURL!)
               webView.load(myRequest)
      }}
        // Do any additional setup after loading the view.


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


