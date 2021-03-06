//
//  AppDelegate.swift
//  Assignment2
//
//  Created by Brandon E Fish on 2018-02-07.
//  Copyright © 2018 Brandon E Fish. All rights reserved.
//

import UIKit
import SwiftTheme

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application:UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        MyThemes.restoreLastTheme()
        
        // status bar
        
        UIApplication.shared.theme_setStatusBarStyle([.lightContent, .default, .lightContent, .lightContent], animated: true)
        
        // navigation bar
        
        let navigationBar = UINavigationBar.appearance()
        
        let shadow = NSShadow()
        shadow.shadowOffset = CGSize(width: 0, height: 0)
        
        let titleAttributes = GlobalPicker.barTextColors.map { hexString in
            return [
                NSAttributedStringKey.foregroundColor: UIColor(rgba: hexString),
                NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16),
                NSAttributedStringKey.shadow: shadow
            ]
        }
        
        navigationBar.theme_tintColor = GlobalPicker.barTextColor
        navigationBar.theme_barTintColor = GlobalPicker.barTintColor
        navigationBar.theme_titleTextAttributes = ThemeDictionaryPicker.pickerWithAttributes(titleAttributes)
        
        // tab bar
        
        let tabBar = UITabBar.appearance()
        
        tabBar.theme_tintColor = GlobalPicker.barTextColor
        tabBar.theme_barTintColor = GlobalPicker.barTintColor
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) { }
    
    func applicationDidEnterBackground(_ application: UIApplication) { }
    
    func applicationWillEnterForeground(_ application: UIApplication) { }
    
    func applicationDidBecomeActive(_ application: UIApplication) { }
    
    func applicationWillTerminate(_ application: UIApplication) {
        MyThemes.saveLastTheme()
    }

}

