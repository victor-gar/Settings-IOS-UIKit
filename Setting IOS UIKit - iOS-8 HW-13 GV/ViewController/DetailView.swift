//
//  DetailView.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit

class DetailView: UIViewController{
    
    //MARK: - Outlets

   public var modells = [Section]()
    
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
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        view.backgroundColor = .systemBackground
    }
    
    //MARK: - SetupHierarchy

    private func setupHierarchy(){
        view.addSubview(iconImageView)
        view.addSubview(label)
    }
    
    //MARK: - Setup

    private func setupLayout(){
        label.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(iconImageView.snp.bottom).offset(50)
        }
        
        iconImageView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(150)
            make.width.equalTo(128)
            make.height.equalTo(128)
        }
    }

    public func detailFullIcon(with model: SettingFullIcon){
            label.text = model.title
            iconImageView.image = model.icon
    }
    
    public func detailSwitch(with model: SettingSwitchOption){
            label.text = model.title
            iconImageView.image = model.icon
    }
    
    public func detailIconColor(with model: SettingOption){
            label.text = model.title
            iconImageView.image = model.icon?.withRenderingMode(.alwaysTemplate)
    }
}
