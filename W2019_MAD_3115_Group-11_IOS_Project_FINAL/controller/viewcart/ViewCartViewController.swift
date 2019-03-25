//
//  ViewCartViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewCartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var tempgtotal:Float=0
    var tempprice:Float?
    var tempimage:String?
    var tempname:String?
    var tempname1:String?
    var random:Int?
   var odetails=OrderDetails.od
    var temparray=[ShoppingCart]()
    @IBOutlet weak var grandtotal: UILabel!
    
    @IBOutlet weak var tblcart: UITableView!
    var pro=Product.sharedproduct
var sh1=ShoppingCart.shop
    override func viewDidLoad() {
        super.viewDidLoad()
self.navigationItem.title="Cart Details"
        self.navigationController?.navigationBar.isHidden=false
        // Do any additional setup after loading the view.
        self.tblcart.delegate=self
        self.tblcart.dataSource=self
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "CheckOut->>", style: .plain, target: self, action: #selector(addTapped))
    }
    
    func randomoid()->Int
    {
          random=Int.random(in: 0...1000)
   return random!
    }
    @objc func addTapped()
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY"
        let strDate = dateFormatter.string(from: Date())
        var adddate=strDate
        for m1 in sh1.productList
        {
            if let p11=pro.productdetails[m1.productid!]
            {
                tempname1=p11.productname
            }
        var shop1=ShoppingCart(dateadded:adddate,oderid:randomoid(),pid:m1.productid!,pname:tempname1!,qty:m1.quantity!,price:m1.price,subtotal:Float(m1.quantity!)*m1.price)
            self.temparray.append(shop1)
        }
        
        sh1.addorder(s10: temparray, oid: randomoid())
        sh1.productList.removeAll()
        
        let alert = UIAlertController(title:nil,message:"Order Palced",preferredStyle: .alert)
        let addaction=UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(addaction)
        self.present(alert,animated: true,completion: nil)
        perform(#selector(backtomain), with: nil, afterDelay: 2)
    }
    
    @objc func backtomain()
    {
         performSegue(withIdentifier: "backmainmenu", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sh1.productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartcell") as! ViewCartableViewCell
        
        let m=sh1.productList[indexPath.row]
        for i in pro.productdetails
        {
            if i.value.productid==m.productid
            {
                tempname=i.value.productname
                tempimage=i.value.pimage
                tempprice=i.value.productprice
            }
        }
        
        cell.delegate=self as OnSelection
       cell.index=indexPath.row
        
        cell.cpid.text=m.productid
        cell.cpqty.text=String(m.quantity!)
        cell.cpprice.text=String(m.price)
        cell.cpname.text=tempname
        cell.cpprice.text=String(tempprice!)
        cell.cartimage.image=UIImage(named:tempimage!)
        cell.cptotal.text=String(Float(m.quantity!) * tempprice! )
        self.tempgtotal=self.tempgtotal+(Float(m.quantity!) * tempprice!)
       // self.grandtotal.text="Total Amount:($):\(String(tempgtotal))"
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
        let alert = UIAlertController(title:"Item",message:"Removed Sucessfully",preferredStyle: .alert)
        let addaction=UIAlertAction(title: "Done", style: .default, handler: nil)
        alert.addAction(addaction)
        self.present(alert,animated: true,completion: nil)
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
