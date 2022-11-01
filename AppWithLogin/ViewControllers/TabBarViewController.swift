//
//  TabBarViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 10/31/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        
        tabBarAppearance.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarAppearance
        
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}
