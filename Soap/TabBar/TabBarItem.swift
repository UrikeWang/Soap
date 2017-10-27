//
//  TabBarItem.swift
//  Soap
//
//  Created by yuling on 2017/10/27.
//  Copyright © 2017年 yuling. All rights reserved.
//

// MARK: - TabBarItem
import UIKit

class TabBarItem: UITabBarItem {
    
    // MARK: Property
    var itemType: TabBarItemType?
    
    // MARK: Init
    init(itemType: TabBarItemType) {
        
        super.init()
        
        self.itemType = itemType
        
        self.title = itemType.title
        
//        self.image = itemType.image
//        
//        self.selectedImage = itemType.selectedImage
        
    }

    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }

}
