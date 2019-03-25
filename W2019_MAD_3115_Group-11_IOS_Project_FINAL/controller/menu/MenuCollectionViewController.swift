//
//  MenuCollectionViewController.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-23.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MenuCollectionViewController: UICollectionViewController {
    var user:String?
    var menuitem=["profile4.png","order.png","product.png","cart.png","help.png","contact.png","logout.png"]
    var menulabel=["My Profile","My Orders","Products","Cart Items","Need Help","Contact Us","Logout"]
    
    override func viewDidLoad() {
        print(user!)
        super.viewDidLoad()
self.collectionView.allowsSelection  = true;
          self.navigationItem.hidesBackButton=true
         self.navigationItem.title="Main Menu"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.menuitem.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menucell", for: indexPath) as! MenuCollectionViewCell
        cell.menuimae.image = UIImage(named: menuitem[indexPath.row])
        cell.menutitle.text=menulabel[indexPath.row]
    
        // Configure the cell
    
        return cell
    }

    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if (indexPath.item==0)
        {
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let homevc=sb.instantiateViewController(withIdentifier: "userprofile") as!  UserProfileViewController
            homevc.user=user
            self.navigationController?.pushViewController(homevc, animated: true)
        }
        else if (indexPath.item==1)
        {
            print("orders")
        }
        else if (indexPath.item==2)
        {
            print("products")
            
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let homevc=sb.instantiateViewController(withIdentifier: "productpage") as!   ProductViewController
            self.navigationController?.pushViewController(homevc, animated: true)
        }
        else if (indexPath.item==3)
        {
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let homevc=sb.instantiateViewController(withIdentifier: "viewcartpage") as!   ViewCartViewController
            self.navigationController?.pushViewController(homevc, animated: true)
        }
        else if (indexPath.item==4)
        {
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let homevc=sb.instantiateViewController(withIdentifier: "helppage") as!  HelpViewController
            self.navigationController?.pushViewController(homevc, animated: true)
        }
        else if (indexPath.item==5)
        {
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let homevc=sb.instantiateViewController(withIdentifier: "contactus") as!   contactViewController
            self.navigationController?.pushViewController(homevc, animated: true)
        }
        else if (indexPath.item==6)
        {
            print("logout")
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let lionvc=sb.instantiateViewController(withIdentifier: "splashscreen") as! ViewController
            self.present(lionvc,animated: true)
            
        }
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
