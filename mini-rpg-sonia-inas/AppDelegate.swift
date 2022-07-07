//
//  AppDelegate.swift
//  mini-rpg-sonia-inas
//
//  Created by Sonia  on 07/07/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        
        let w = UIWindow(frame: UIScreen.main.bounds)
        let f = SubscriberViewController()
        w.rootViewController = UINavigationController(rootViewController: f)
        w.makeKeyAndVisible()
        self.window = w
        return true
        
        
    }




}

