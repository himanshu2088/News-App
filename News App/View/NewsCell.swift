//
//  NewsCell.swift
//  News App
//
//  Created by Himanshu Joshi on 16/05/20.
//  Copyright © 2020 Himanshu Joshi. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var dataLabel: UILabel!
}
