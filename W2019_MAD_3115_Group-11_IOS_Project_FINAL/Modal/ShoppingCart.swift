//
//  ShoppingCart.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import Foundation
class ShoppingCart:IDisplay
{
    
    
    static let shop=ShoppingCart()
    private var cartid:Int?
    var productid:String?
    var quantity:Int?
    var dateadded=String()
    var count:Int?
    var subtotal:Float?
    var total:Float?
    var name:String=""
    var price:Float=0.0
    var tprice:Float?
    var productList = [ShoppingCart]()
    var orderedProduct = Dictionary<Int,[ShoppingCart]>()
    init()
    {
        self.cartid=Int()
        self.productid=String()
        self.quantity=Int()
        self.dateadded=String()
    }
    
    init(proid:String,qty:Int,dateadded:String)
    {
        self.productid=proid
       
        self.quantity=qty
        self.dateadded=dateadded
    }
    
    func addtocart(s:ShoppingCart)
    {
        self.productList.append(s)
    }
    
    func displaydata() {
        for i in productList
        {
            print(i.productid!)
        }
    }
    
    func displaydata(msg: Bool, no: Int) {
        print(" ")
    }
    
    func removeitem(pid:String)
    {
        for i in 0...productList.count-1
        {
            for j in productList
            {
                if j.productid==pid
                {
                    productList.remove(at: i)
                    print("---//--")
                    print(i)
                       print("---//--")
                  for i in productList
                  {
                    print(i.productid!)
                    }
                    break
                }
            }
            
        }
    }
    
}
