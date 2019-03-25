//
//  ProductDetailsViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    var prid:String?
    var prname:String?
    var pprice:Float?
    var pdesccription:String?
    var primage:String?
    @IBOutlet weak var desc: UILabel!
    
    @IBOutlet weak var pid: UILabel!
    
    @IBOutlet weak var pname: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var pdesc: UILabel!
    
    @IBOutlet weak var pimage: UIImageView!
    
    @IBOutlet weak var txtqty: UITextField!
    
    
    @IBOutlet weak var lbldesc: UILabel!
    
    
    
    
        override func viewDidLoad() {
               self.navigationController?.title="ProductList"
            
        super.viewDidLoad()
        if let eprid=prid
        {
            pid.text="ProductID:\(eprid)"
            }
            if let eprname=prname
            {
                pname.text="Name:\(eprname)"
            }
            if let eprprice=pprice
            {
                price.text = "Price:\(String(eprprice))"
            }
            if let eprimage=primage
            {
                pimage.image=UIImage(named: eprimage)
            }
            if let edesc=pdesccription
            {
                
                pdesc.text=edesc
            }
        // Do any additional setup after loading the view.
    }
    

    @IBAction func qtysteeper(_ sender: UIStepper) {
        self.txtqty.text=String(Int(sender.value))
    }
    
    
    
    @IBAction func btncart(_ sender: UIButton) {
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
