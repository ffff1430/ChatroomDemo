//
//  ChatTableViewCell.swift
//  ChatroomDemo
//
//  Created by star on 2020/4/23.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    @IBOutlet weak var ChatImageView: UIImageView!
    
    @IBOutlet weak var ChatTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ChatTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        ChatTextView.layer.cornerRadius = 10
        ChatImageView.layer.cornerRadius = 25    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
