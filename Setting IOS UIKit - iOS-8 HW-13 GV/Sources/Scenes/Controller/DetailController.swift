//
//  DetailController.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 27.03.2023.
//

import UIKit

class DetailController: UIViewController {
    
    var cell: Setting? {
        didSet {
            label.text = cell?.title
            iconImageView.image = UIImage(named: cell!.icon) ?? UIImage(named: "default")
        }
    }
    
    //MARK: - UI Elements

    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .black
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 30
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
       
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        navigationItem.largeTitleDisplayMode = .never
        view.backgroundColor = .systemBackground
        print("detail")
           
        }
    
    //MARK: - Setup
    
    private func setupHierarchy(){
        view.addSubview(iconImageView)
        view.addSubview(label)
    }
    
    private func setupLayout(){
        label.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(iconImageView.snp.bottom).offset(12)
        }
        iconImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(150)
            make.width.equalTo(128)
            make.height.equalTo(128)
        }
    }
}
