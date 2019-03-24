//
//  LoginViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-23.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
 // var glog=Customer.gblcustomer
    var logcust=Customer()
    @IBOutlet weak var txtpass: UITextField!
    
    @IBOutlet weak var txtemail: UITextField!
    
    
    @IBOutlet weak var swremember: UISwitch!
     let userdefaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
          self.navigationController?.navigationBar.isHidden=true
        if let uid = userdefaults.string(forKey: "userid")
        {
            txtemail.text = uid
            swremember.isOn = true
        }
        if let vid = userdefaults.string(forKey: "pass")
        {
            txtpass.text = vid
            swremember.isOn = true
        }
        // Do any additional setup after loading the view.
getdata()
    }
    
    func getdata()  {
        var c1=Customer(fname:"samirThaker",address:"scarborough",email:"s@gmail.com",password:"samir",ccinfo:"7676568767",shipinfo:"toronto")
        var c2=Customer(fname:"MandeepKaur",address:"brampton",email:"mandeep@gmail.com",password:"mandy",ccinfo:"8768765656",shipinfo:"brampton")
        
        logcust.register(c1: c1, email: "s@gmail.com")
        logcust.register(c1: c2, email: "mandeep@gmail.com")
        logcust.displaydata()
    }
    
    
    @IBAction func btnlogin(_ sender: Any) {
        var log=logcust.verifylogin(uid: txtemail.text!, pass: txtpass.text!)
        if(log)
        {
            if swremember.isOn
            {
                userdefaults.set(txtemail.text,forKey:"userid")
                userdefaults.set(txtpass.text,forKey:"pass")
                
            }
            else
            {
                userdefaults.removeObject(forKey: "userid")
                userdefaults.removeObject(forKey: "pass")
                
            }
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let lionvc=sb.instantiateViewController(withIdentifier: "mainmenu") as!   MenuCollectionViewController
            self.navigationController?.pushViewController(lionvc, animated: true)
        }
        else
        {
            let alert = UIAlertController(title:nil,message:"Invalid",preferredStyle: .alert)
            let addaction=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(addaction)
            self.present(alert,animated: true,completion: nil)
            self.txtemail.text=""
            self.txtpass.text=""
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
