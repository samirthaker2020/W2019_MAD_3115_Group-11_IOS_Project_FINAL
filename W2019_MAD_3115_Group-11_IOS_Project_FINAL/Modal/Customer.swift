//
//  Customer.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-23.
//  Copyright © 2019 Owner. All rights reserved.
//

import Foundation

class Customer:IDisplay {
    func displaydata() {
        for (_,v) in custdetails
        {
            print(v.fname!)
            print(v.address!)
            print(v.ccinfo!)
            print(v.email!)
            print(v.password!)
            print(v.shipinfo!)
            
        }
    }
    
    func displaydata(msg: Bool, no: Int) {
        print(" ")
    }
    
    
    
    
   // static var gblcustomer=Customer()
    var fname:String?
    var address:String?
    var email:String?
    var password:String?
    var ccinfo:String?
    var shipinfo:String?
    var custdetails=Dictionary<String,Customer>()
    var ch:Bool=false
  
    init() {
        self.fname=String()
        self.address=String()
        self.ccinfo=String()
        self.shipinfo=String()
        self.email=String()
        self.password=String()
        
    }
    
    init(fname:String,address:String,email:String,password:String,ccinfo:String,shipinfo:String)
        
    {
        self.address=address
        self.ccinfo=ccinfo
        self.email=email
        self.fname=fname
        self.password=password
        self.shipinfo=shipinfo
        
    }
    func register(c1:Customer,email:String)   {
         
        
            self.custdetails.updateValue(c1, forKey: email)
    }
    
    func verifylogin(uid:String,pass:String) -> Bool {
        if let u=custdetails[uid]
        {
            if u.password==pass
            {
                ch=true
            }
        }
        else
        {
            ch=false
        }
       
            return ch
        
        
    }
    
    
}
