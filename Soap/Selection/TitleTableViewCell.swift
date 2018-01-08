//
//  TitleTableViewCell.swift
//  Soap
//
//  Created by yuling on 2017/10/27.
//  Copyright © 2017年 yuling. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    private func setupTitleLabel() {
        
        let label = titleLabel!
        
        label.text = "請選擇您的需求"
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupTitleLabel()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
