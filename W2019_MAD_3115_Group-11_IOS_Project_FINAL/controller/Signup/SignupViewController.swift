//
//  SignupViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-23.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  self.navigationController?.navigationBar.isHidden=true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backtologin(_ sender: UIBarButtonItem) {
        let u=self.navigationController?.viewControllers[0]
        self.navigationController?.popToViewController(u!, animated: true)
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
