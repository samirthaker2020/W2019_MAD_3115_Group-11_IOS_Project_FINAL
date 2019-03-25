//
//  UserProfileViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {
   
    @IBOutlet weak var txtcid: UITextField!
    
    @IBOutlet weak var txtfname: UITextField!
    
    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var txtshipinfo: UITextField!
    @IBOutlet weak var txtccinfo: UITextField!
    
    @IBOutlet weak var txtaddress: UITextField!
    
    
    @IBOutlet weak var txtpass: UITextField!
    var user:String?
    var c1=Customer.gblcustomer
    var custdetails1=Dictionary<String,String>()
    override func viewDidLoad() {
        super.viewDidLoad()
       self.navigationController?.navigationBar.isHidden=false
       
        getuserdetails()
        
        self.navigationItem.title="User Profile"
        // Do any additional setup after loading the view.
    }
    
    func getuserdetails()  {
        if let u=user
        {
            custdetails1 = c1.getcustomer(email:u)
            
        }
        
        if let fn=custdetails1["fname"]
        {
            txtfname.text=fn
        }
        if let cid=custdetails1["cid"]
        {
            txtcid.text=cid
        }
        if let email=custdetails1["email"]
        {
            txtemail.text=email
        }
        if let pass=custdetails1["pass"]
        {
            txtpass.text=pass
        }
        if let ccinfo=custdetails1["ccinfo"]
        {
            txtccinfo.text=ccinfo
        }
        if let shipinfo=custdetails1["shipinfo"]
        {
            txtshipinfo.text=shipinfo
        }
        if let add=custdetails1["address"]
        {
            txtaddress.text=add
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
