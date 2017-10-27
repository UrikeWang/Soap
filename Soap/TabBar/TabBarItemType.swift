//
//  TabBarItemType.swift
//  Soap
//
//  Created by yuling on 2017/10/27.
//  Copyright © 2017年 yuling. All rights reserved.
//

import UIKit

// MARK: - TabBarItemType
enum TabBarItemType {
    
    // MARK: Case
    case selection, store, material
}

// MARK: - Title
extension TabBarItemType {

    var title: String {
    
        switch self {
            
        case .selection:
            
            return NSLocalizedString("Selection", comment: "")
           
        case .store:
            
            return NSLocalizedString("Store", comment: "")
            
        case .material:
            
            return NSLocalizedString("Material", comment: "")
        
        }
        
    }
    
}
