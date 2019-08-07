//
//  AppDelegate.swift
//  SplashPage
//
//  Created by SER-YCL7 on 7/15/19.
//  Copyright © 2019 CSApps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

//nav bar settings begin
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
    //UINavigationBar.appearance().barTintColor = UIColor.gray
      UINavigationBar.appearance().tintColor = UIColor.gray
        
        
        
       let navigationFont = UIFont(name: "DINAlternate-Bold", size: 20)!
        
       let navigationFontAttributes = [NSAttributedStringKey.font : navigationFont]
        
        
        
            UINavigationBar.appearance().titleTextAttributes = navigationFontAttributes
        UIBarButtonItem.appearance().setTitleTextAttributes(navigationFontAttributes, for: .normal)
        
        
        return true
    }
//nav bar settings end
    

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    
    }

    func applicationWillTerminate(_ application: UIApplication) {
      
    }


}

