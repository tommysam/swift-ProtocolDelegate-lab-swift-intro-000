//
//  EmojiCellTableViewCell.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var firstEmojiLabel: UILabel!
    @IBOutlet weak var secondEmojiLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
