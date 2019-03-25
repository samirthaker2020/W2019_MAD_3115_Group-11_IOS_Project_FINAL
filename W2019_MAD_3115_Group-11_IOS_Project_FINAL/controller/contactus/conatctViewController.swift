//
//  conatctViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class contactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title="Conatct Us"

 self.navigationController?.navigationBar.isHidden=false
        let alert = UIAlertController(title:"Email us-kaurmandeep239@gmail.com ",message:"Dial",preferredStyle: .alert)
        let addaction=UIAlertAction(title: "Done", style: .default, handler: nil)
        alert.addAction(addaction)
        self.present(alert,animated: true,completion: nil)
        // Do any additional setup after loading the view.
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
