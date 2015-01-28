//
//  AppDelegate.swift
//  Example
//
//  Created by Andrew Carter on 1/27/15.
//  Copyright (c) 2015 WillowTree Apps. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.applyTheme()
        
        return true
    }

    func applyTheme() {
        
        // Make all navigation bars in the app purple
        UINavigationBar.appearance().barTintColor = UIColor.purpleColor();
        
        // Change tint color of navigation bars
        UINavigationBar.appearance().tintColor = UIColor.yellowColor()
       
        // Use a custom font for bar button items
        UIBarButtonItem.appearance().setTitleTextAttributes(
            [NSFontAttributeName : UIFont(name: "Chalkduster", size: 17.0)!],
            forState: UIControlState.Normal)
       
        // Custom back icon
        UINavigationBar.appearance().backIndicatorImage = UIImage(named: "back");
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(named: "back");
        
        // Adjust the back text for our new image
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffset(horizontal: 10.0, vertical: 0.0), forBarMetrics: .Default);
    }


}

