//
//  Product.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import Foundation
class Product:IDisplay
{
    static let sharedproduct = Product()
    let productid:String
    var productname:String
    var pimage:String
    var productprice:Float
    var pdesc:String
    var productdetails=Dictionary<String,Product>()
    init() {
        self.productid=String()
        self.productname=String()
        self.productprice=Float()
        self.pimage=String()
        self.pdesc=String()
        
    }
    init(productid:String, productname:String, productprice:Float,pimage:String,pdesc:String) {
        self.productid = productid
        self.productname = productname
        self.productprice = productprice
        self.pimage=pimage
        self.pdesc=pdesc
    }
    func addproducts(pid:String,prod:Product)
    {
        productdetails.updateValue(prod, forKey: pid)
    }
    
    func displaydata(msg: Bool, no: Int) {
        print(" ")
    }
    
    func displaydata() {
        print("------------------------------------------------------------------------------")
        print("Product ID:     ||   Product name:       ||   Product price:   || pdesc ")
        print("------------------------------------------------------------------------------")
        
        for (_,v) in productdetails
        {
            print("\(v.productid)            ||   \(v.productname)         ||           \(v.productprice) || \(v.pdesc)")
            
        }
    }
}
