//
//  ViewCartViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewCartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var tblcart: UITableView!
    
var sh1=ShoppingCart.shop
    override func viewDidLoad() {
        super.viewDidLoad()
self.navigationItem.title="Cart Details"
        self.navigationController?.navigationBar.isHidden=false
        // Do any additional setup after loading the view.
        self.tblcart.delegate=self
        self.tblcart.dataSource=self
        for i in sh1.productList
        {
            print(i.productid!)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sh1.productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartcell") as! ViewCartableViewCell
        
        let m=sh1.productList[indexPath.row]
        cell.delegate=self as OnSelection
       cell.index=indexPath.row
        
        cell.cpid.text=m.productid
 
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
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
extension ViewCartViewController: OnSelection
{
    
    func passProduct(index: Int) {
        let p = sh1.productList[index]
     //   print("-----------------")
     //   print(p.productid!)
        sh1.removeitem(pid: p.productid!)
       self.tblcart.reloadData()
      //  sh1.displaydata()
        //print(sh.productList)
        /* if(c==true)
         {
         let alert = UIAlertController(title:"product",message:"Added Sucessfully",preferredStyle: .alert)
         let addaction=UIAlertAction(title: "Done", style: .default, handler: nil)
         alert.addAction(addaction)
         self.present(alert,animated: true,completion: nil)
         
         
         }
         else
         {
         let alert = UIAlertController(title:"ERROR",message:"Try Again Later..",preferredStyle: .alert)
         let addaction=UIAlertAction(title: "OK", style: .default, handler: nil)
         alert.addAction(addaction)
         self.present(alert,animated: true,completion: nil)
         
         }*/
        
        
    }
}
