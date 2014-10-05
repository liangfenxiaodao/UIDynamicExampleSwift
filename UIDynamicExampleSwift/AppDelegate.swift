//
//  AppDelegate.swift
//  JLProgressBar-swift
//
//  Created by Jacky Li on 3/10/14.
//  Copyright (c) 2014 Jacky Li. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let navigationController: UINavigationController = UINavigationController(rootViewController: ViewController())
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }

}

