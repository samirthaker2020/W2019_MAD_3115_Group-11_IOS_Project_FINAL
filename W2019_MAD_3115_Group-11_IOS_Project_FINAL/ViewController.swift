//
//  ViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-23.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//var aindicator=UIActivityIndicatorView = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        perform(#selector(movetologin), with: nil, afterDelay: 2)
    }

    
    @objc func movetologin()
    {
        performSegue(withIdentifier: "movetologin", sender: self)
    }

}

