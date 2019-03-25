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
    var orderid:Int?
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
    
    init(oderid:Int,pid:String,pname:String,qty:Int,price:Float,subtotal:Float) {
        self.orderid=oderid
        self.productid=pid
        self.name=pname
        self.quantity=qty
        self.price=price
        self.subtotal=subtotal
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
        var arrayNewProducts:[ShoppingCart] = [ShoppingCart]()
        for product in self.productList {
            if product.productid != pid {
                arrayNewProducts.append(product)
            }
            else{ }
        }
        self.productList = arrayNewProducts
        
    }
    
    func addorder(s10:[ShoppingCart],oid:Int) {
        
        self.orderedProduct.updateValue(s10, forKey: oid)
        
      /*  for  (k,v) in orderedProduct
        {
            for j in v
            {
                print("order:\(j.productid!)")
            }
        } */
    }
}
