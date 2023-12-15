//
//  SceneDelegate.swift
//  TrafficLite
//
//  Created by Максим on 17.11.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = scene as? UIWindowScene else {return}
        window = UIWindow(windowScene: windowScene)
        let initialViewController = TrafficLightViewController()
        let navigationViewController = UINavigationController(rootViewController: initialViewController)
        window?.rootViewController = navigationViewController
        window?.makeKeyAndVisible()
        navigationViewController.view.backgroundColor = UIColor.white
        
    }

}

