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
            print(v.cid!)
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
    
    
    
    
   static var gblcustomer=Customer()
    var cid:Int?
    var fname:String?
    var address:String?
    var email:String?
    var password:String?
    var ccinfo:String?
    var shipinfo:String?
    var custdetails=Dictionary<String,Customer>()
    var getcust=Dictionary<String,String>()
    var ch:Bool=false
  
    init() {
        self.cid=Int()
        self.fname=String()
        self.address=String()
        self.ccinfo=String()
        self.shipinfo=String()
        self.email=String()
        self.password=String()
        
    }
    
    init(cid:Int,fname:String,address:String,email:String,password:String,ccinfo:String,shipinfo:String)
        
    {
        self.cid=cid
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
    
    func getcustomer(email:String) -> Dictionary<String,String>
{
        if let cust=custdetails[email]
        {
            getcust.updateValue(String(cust.cid!), forKey: "cid")
            getcust.updateValue(cust.fname!, forKey: "fname")
            getcust.updateValue(cust.address!, forKey: "address")
              getcust.updateValue(cust.email!, forKey: "email")
              getcust.updateValue(cust.ccinfo!, forKey: "ccinfo")
              getcust.updateValue(cust.shipinfo!, forKey: "shipinfo")
                    getcust.updateValue(cust.password!, forKey: "pass")
        }
    return getcust
    }
    
}
