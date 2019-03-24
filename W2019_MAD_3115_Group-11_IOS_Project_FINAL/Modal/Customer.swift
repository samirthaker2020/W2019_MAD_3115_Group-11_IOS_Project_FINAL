//
//  Customer.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-23.
//  Copyright © 2019 Owner. All rights reserved.
//

import Foundation

class Customer {
    
    static var gblcustomer=Customer()
    var fname:String?
    var address:String?
    var email:String?
    var password:String?
    var ccinfo:String?
    var shipinfo:String?
    var custdetails=Dictionary<String,Customer>()
    
    
    
    func registercustomer(uid:String,c:Customer)
    {
        custdetails.updateValue(c, forKey: uid)
    }
    
}
