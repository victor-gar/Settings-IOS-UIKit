//
//  SceneDelegate.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else {
            return }
        window = UIWindow(windowScene: windowScene)
        
        let initialViewController = initViewController()
        let navigationCotnroller = UINavigationController(rootViewController: initialViewController)
        navigationCotnroller.navigationBar.barStyle = .default
        navigationCotnroller.navigationBar.isTranslucent = true
        navigationBarConfiguration(navigationCotnroller)
        window?.rootViewController = navigationCotnroller
        window?.makeKeyAndVisible()
    }
    
    private func initViewController () -> UIViewController {
        let controller = MainViewController()
        return controller
    }
    private func navigationBarConfiguration (_ controller: UINavigationController) {
        controller.navigationBar.prefersLargeTitles = true
        controller.navigationBar.backgroundColor = UIColor.systemBackground
        controller.navigationBar.tintColor = UIColor.black

    }

}

