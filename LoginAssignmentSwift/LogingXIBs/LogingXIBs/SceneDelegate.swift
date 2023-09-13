//
//  SceneDelegate.swift
//  LogingXIBs
//
//  Created by Sindhu K on 13/09/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Create a UIWindowScene instance from the incoming scene parameter.
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Create your custom view controller
        let myViewController = LoginView()

        // Create a UIWindow and set it to the window property.
        window = UIWindow(windowScene: windowScene)

        // Set your custom view controller as the root view controller.
        window?.rootViewController = myViewController

        // Make the window visible.
        window?.makeKeyAndVisible()
    }
}
