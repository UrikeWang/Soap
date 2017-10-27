//
//  ViewController.swift
//  Soap
//
//  Created by yuling on 2017/10/27.
//  Copyright © 2017年 yuling. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    init(itemTypes: [TabBarItemType]) {
        
        super.init(nibName: nil, bundle: nil)
        
        let viewControllers: [UIViewController] = itemTypes.map(
        
            TabBarController.prepare
            
        )
        
        setViewControllers(viewControllers, animated: false)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    static func prepare(for itemType: TabBarItemType) -> UIViewController {
        
        switch itemType {
            
        case .selection:
            
            let selectionTableViewController = SelectionTableViewController(style: .plain)
            
            let navigationController = UINavigationController(
                rootViewController: selectionTableViewController
            )
            
            navigationController.tabBarItem = TabBarItem(itemType: itemType)
            
            return navigationController
            
        case .store:
            
            let storeTableViewController = StoreTableViewController(style: .plain)
            
            let navigationController = UINavigationController(
                rootViewController: storeTableViewController
            )
            
            navigationController.tabBarItem = TabBarItem(itemType: itemType)
            
            return navigationController

        case .material:
            
            let materialTableViewController = MaterialTableViewController(style: .plain)
            
            let navigationController = UINavigationController(
                rootViewController: materialTableViewController
            )
            
            navigationController.tabBarItem = TabBarItem(itemType: itemType)
            
            return navigationController
        
        }
    
    }
    
    
}
