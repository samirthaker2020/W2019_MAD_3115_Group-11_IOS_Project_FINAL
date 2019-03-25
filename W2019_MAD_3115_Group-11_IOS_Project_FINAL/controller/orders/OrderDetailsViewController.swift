//
//  OrderDetailsViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-25.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class OrderDetailsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var oid:Int?
    var odate:String?
    @IBOutlet weak var tblorderoverview: UITableView!
    var o=ShoppingCart.shop
    var temp=Array<ShoppingCart>()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title="Order Details"
        self.navigationController?.navigationBar.isHidden=false
        // Do any additional setup after loading the view.
        self.tblorderoverview.delegate=self
        self.tblorderoverview.dataSource=self
        
        for i in 0...o.orderedProduct.count-1
        {
            for j in o.orderedProduct.values
            {
                self.oid=j[i].orderid!
                self.odate=j[i].dateadded
                print("---")
                print(j[i].orderid!)
                print("---")
                print(oid!)
            }
        }
       
       // print(temp)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return o.orderedProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ocell") as! OrderOverviewTableViewCell
        
       //cell.lblodate.text=self.odate!
        cell.lbloid.text=String(self.oid!)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }

}
