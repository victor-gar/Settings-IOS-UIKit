//
//  ViewController.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
        
    private var settingsListView: SettingListView? {
        guard isViewLoaded else { return nil }
        return view as? SettingListView
    }
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.topItem?.title = "Settings"
             
        view = SettingListView()

        print("controller")
    }

    //MARK: - Setup

    //MARK: - User Action
    
}


