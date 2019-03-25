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
    var adddate:String?
    var sh=ShoppingCart.shop
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
             self.navigationItem.title="Product Details"
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
        
        if (txtqty.text=="" || txtqty.text=="0" )
        {
            
        }
        else
        {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd-MM-YYYY"
            let strDate = dateFormatter.string(from: Date())
            adddate=strDate
            var s=ShoppingCart(proid:prid!,qty:Int(txtqty.text!)!,dateadded:adddate!)
            sh.addtocart(s: s)
            sh.displaydata()
            let alert = UIAlertController(title:"Item",message:"Added Sucessfully",preferredStyle: .alert)
            let addaction=UIAlertAction(title: "Done", style: .default, handler: nil)
            alert.addAction(addaction)
            self.present(alert,animated: true,completion: nil)
        }
       
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
