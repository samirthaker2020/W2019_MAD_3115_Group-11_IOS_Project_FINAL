//
//  ProductTableViewCell.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-24.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var pname: UILabel!
    
    @IBOutlet weak var pimage: UIImageView!
    
    
    var delegate: OnSelection?
    var index: Int?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var btnvd: UIButton!
    
    @IBAction func btndetails(_ sender: Any) {
        
        if let  i = index{
            if let d = delegate
            {
                d.passProduct(index: i)
            }
        }
    }
    
}
protocol OnSelection:class {
    func passProduct(index: Int)
}

