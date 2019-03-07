//
//  AppDelegate.swift
//  Retain Cycle
//
//  Created by Senfonico Dev on 20.02.2019.
//  Copyright © 2019 Senfonico Dev. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        window.makeKeyAndVisible()
        window.rootViewController = UINavigationController(rootViewController: ViewController())
        self.window  = window
        
        return true
        
    }



}

