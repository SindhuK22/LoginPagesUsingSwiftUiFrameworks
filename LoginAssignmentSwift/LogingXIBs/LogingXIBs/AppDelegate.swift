//
//  AppDelegate.swift
//  LogingXIBs
//
//  Created by Sindhu K on 13/09/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Use the default configuration, or create a custom one if needed.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // You can use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}



