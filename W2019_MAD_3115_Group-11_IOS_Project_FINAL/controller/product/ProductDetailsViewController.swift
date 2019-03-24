//
//  ProductDetailsViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController {

    
    @IBOutlet weak var desc: UILabel!
    
    @IBOutlet weak var pid: UILabel!
    
    @IBOutlet weak var pname: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var pdesc: UILabel!
    
    
    @IBOutlet weak var txtqty: UITextField!
    
    
    
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func qtysteeper(_ sender: UIStepper) {
        self.txtqty.text=String(Int(sender.value))
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
