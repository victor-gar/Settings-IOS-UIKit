//
//  DetailView.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit

class DetailView: UIView{
    
    //MARK: - Outlets
    
    var models: [Section] = []
    private var model = Section.data
    
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
    
    init() {
        super.init(frame: .zero)
        commonInit()
        print("DetailView")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupHierarchy()
        setupLayout()
        setupData(with: model)
    }
    
    
    //MARK: - SetupHierarchy
    public func setupData(with models: ([Section])) {
        self.models = models
    }
    private func setupHierarchy(){
        addSubview(iconImageView)
        addSubview(label)
    }
    
    //MARK: - Setup
    private func setupLayout(){
        label.snp.makeConstraints { make in
            make.centerX.equalTo(12)
            make.top.equalTo(iconImageView.snp.bottom).offset(50)
        }
        iconImageView.snp.makeConstraints { make in
            make.centerX.equalTo(12)
            make.top.equalTo(150)
            make.width.equalTo(128)
            make.height.equalTo(128)
        }
    }
    
    public func detailSwitch(with model: SettingSwitchOption){
        print("DetailSwits")
        label.text = model.title
        iconImageView.image = UIImage(named: model.icon)
    }
    
    public func detailIconColor(with model: SettingOption){
        print("Detail")
        label.text = model.title
        iconImageView.image = UIImage(named: model.icon)
    }
}



