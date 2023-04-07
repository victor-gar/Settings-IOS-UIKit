//
//  DetailController.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 27.03.2023.
//

import UIKit

class DetailController: UIViewController {
    
    public var modells = [Section]()

    private var detailView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        view = DetailView()
        view.backgroundColor = .systemBackground
        print("detail")
        }
 
    // MARK: - Confguration
    
    // MARK: - User actions and updates
}
