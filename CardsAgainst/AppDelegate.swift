//
//  AppDelegate.swift
//  CardsAgainst
//
//  Created by JP Simard on 10/25/14.
//  Copyright (c) 2014 JP Simard. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        // Window
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window!.backgroundColor = appBackgroundColor
        window!.rootViewController = UINavigationController(rootViewController: MenuViewController())
        window!.makeKeyAndVisible()

        // Appearance
        application.statusBarStyle = .LightContent
        UINavigationBar.appearance().barTintColor = navBarColor
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: lightColor]
        window!.tintColor = appTintColor

        Client.sharedInstance.transceive("cards-against")
        return true
    }
}