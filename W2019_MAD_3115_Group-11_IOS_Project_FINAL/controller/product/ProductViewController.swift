//
//  ProductViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    
    @IBOutlet weak var tbl1: UITableView!
     var currentCell = 0
    let glblData = Product.sharedproduct
    var a=[Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
self.navigationController?.navigationBar.isHidden=false
        getproducts()
        glblData.displaydata()
        self.tbl1.dataSource=self
        self.tbl1.delegate=self
        // Do any additional setup after loading the view.
    }
    
    func getproducts()
    {
        let product1 = Product(productid: "P001", productname: "Hard Drive", productprice: 120.00,pimage:"hdd.png")
        let product2 = Product(productid: "P002", productname: "Pen drive", productprice: 20.00,pimage:"pendrive.png")
        let product3 = Product(productid: "P003", productname: "Earpods", productprice: 50.00,pimage:"earpods.jpg")
        let product4 = Product(productid: "P004", productname: "monitor", productprice: 300.00,pimage:"monitor.png")
        let product5 = Product(productid: "P005", productname: "iphone", productprice: 1200.00,pimage:"iphone7p.png")
        
         glblData.addproducts(pid: "P001", prod: product1)
        glblData.addproducts(pid: "P002", prod: product2)
        glblData.addproducts(pid: "P003", prod: product3)
        glblData.addproducts(pid: "P004", prod: product4)
        glblData.addproducts(pid: "P005", prod: product5)
        
        a.append(glblData.productdetails["P001"]!)
        a.append(glblData.productdetails["P002"]!)
        a.append(glblData.productdetails["P003"]!)
        a.append(glblData.productdetails["P004"]!)
        a.append(glblData.productdetails["P005"]!)
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return glblData.productdetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pcell") as! ProductTableViewCell
        
        let m=a[indexPath.row]
        
        cell.price.text="Price($)::\(String(m.productprice))"
        cell.pname.text="Name::\(m.productname)"
        cell.pimage.image=UIImage(named: m.pimage)
        cell.btnvd.tag = indexPath.row
        cell.delegate=self as? OnSelection
        cell.index = indexPath.row
        cell.btnvd.addTarget(self, action: #selector(btnAddOrder(_ :)), for: .touchUpInside)
       return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    @objc func btnAddOrder(_ sender: UIButton)
    {
        print("Hello \(sender.tag)")
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
extension ProductViewController: OnSelection
{
    
    func passProduct(index: Int) {
        let p = a[index]
        print(p.productname)
        
        
        
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
