//
//  ViewCartableViewCell.swift
//  W2019_MAD_3115_Group-11_IOS_Project_FINAL
//
//  Created by Owner on 2019-03-25.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewCartableViewCell: UITableViewCell {

    var delegate: OnSelection?
    var index: Int?
    @IBOutlet weak var cptotal: UILabel!
    @IBOutlet weak var cpqty: UILabel!
    
    
    @IBOutlet weak var cpprice: UILabel!
    
    @IBOutlet weak var cartimage: UIImageView!
    
    @IBOutlet weak var cpid: UILabel!
    
    @IBOutlet weak var cpname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func cremove(_ sender: UIButton) {
        if let  i = index{
            if let d = delegate
            {
                d.passProduct(index: i)
            }
        }
    }
    
}
protocol OnSelection1:class {
    func passProduct(index: Int)
}
