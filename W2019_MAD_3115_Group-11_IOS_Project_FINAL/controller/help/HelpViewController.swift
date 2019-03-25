//
//  HelpViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit
import WebKit
class HelpViewController: UIViewController {

    @IBOutlet weak var web1: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 self.navigationController?.navigationBar.isHidden=false
        self.navigationItem.title="Need Help ?"
       loadHTMLFile()
        // Do any additional setup after loading the view.
    }
    
    func loadHTMLFile(){
        let filepath = Bundle.main.url(forResource: "contactus", withExtension: "html")
        let aboutUsLink = URLRequest(url: filepath!)
        web1.load(aboutUsLink)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
