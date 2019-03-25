//
//  OrderDetails.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-25.
//  Copyright © 2019 Owner. All rights reserved.
//

import Foundation
class OrderDetails
{
    static var od = OrderDetails()
    var orderId: Int
    var productId: String
    var productName: String
    var quantity: Int
    var unitCost: Float
    var subtotal: Float
    var orderdetails=Dictionary<Int,[OrderDetails]>()
    var orderList = [OrderDetails]()
    init()
    {
        self.orderId = Int()
        self.productId = String()
        self.productName = String()
        self.quantity = Int()
        self.unitCost = Float()
        self.subtotal = Float()
        
    }
    init(oderid:Int,pid:String,pname:String,qty:Int,price:Float,subtotal:Float) {
        self.orderId=oderid
        self.productId=pid
        self.productName=pname
        self.quantity=qty
        self.unitCost=price
        self.subtotal=subtotal
    }
    
     
}
