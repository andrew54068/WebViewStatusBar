//
//  AppDelegate.swift
//  WebViewStatusBar
//
//  Created by kidnapper on 2018/9/2.
//  Copyright © 2018 kidnapper. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = ViewController()
        let nav = Nav(rootViewController: vc)
        nav.navigationBar.setBackgroundImage(UIImage(named: "menu_bg"), for: .default)
        nav.modalPresentationCapturesStatusBarAppearance = true
        window?.rootViewController = nav
        
        window?.makeKeyAndVisible()
        
        return true
    }

}

class Nav: UINavigationController {
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
