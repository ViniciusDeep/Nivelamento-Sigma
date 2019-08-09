//
//  CustomTabBarController.swift
//  ViewCode
//
//  Created by Vinicius Mangueira on 09/08/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit


class CustomTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    fileprivate func setupTabBar() {
        viewControllers = [createNavigation(viewController: ViewController(), title: "First", imageNamed: "first"), createNavigation(viewController: ViewController(), title: "Second", imageNamed: "first")]
    }
    
    fileprivate func createNavigation(viewController: UIViewController, title: String, imageNamed: String) -> UINavigationController {
        let navigation = UINavigationController(rootViewController: viewController)
        viewController.view.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        navigation.navigationBar.prefersLargeTitles = true
        viewController.tabBarItem.image = UIImage(named: imageNamed)
        viewController.navigationItem.title = title
        return navigation
    }
}
