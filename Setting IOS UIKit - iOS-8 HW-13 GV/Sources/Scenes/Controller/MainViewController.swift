//
//  ViewController.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit
import SnapKit

protocol SettingControllerDelegate: AnyObject {
    func pushDetail(cell: Setting)
}
class MainViewController: UIViewController, SettingControllerDelegate {
    
    var model: TableData?
    
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
        
        model = TableData()
        
        configureView()
        print("controller")
    }
}

    //MARK: - Configurations
extension MainViewController {
    func configureView() {
        
        guard let models = model?.data else { return }
        
        settingsListView?.configureView(with: models)
        
        settingsListView?.delegate = self
    }
    
    func pushDetail(cell: Setting) {
        let detailVC = DetailController()
        detailVC.cell = cell
        navigationController?.pushViewController(detailVC, animated: true)
    }
}


