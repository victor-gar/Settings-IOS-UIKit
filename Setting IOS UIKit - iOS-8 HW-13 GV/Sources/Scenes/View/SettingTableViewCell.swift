//
//  SwitchTableViewCell.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    
    static let identifier = "SettingTableViewCell"
    
    func configure(with model: Setting) {
        label.text = model.title
        iconImageView.image = UIImage(named: model.icon) ?? UIImage(named: "default")
    }
    
    private let iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()
    
    //MARK: - SetupHierarchy
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarhy()
        setupLayout()
    }
    
    private func setupHierarhy() {
        addSubview(label)
        addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implement")
    }
    
    //MARK: - Setup
    
    private func setupLayout() {
        let size: CGFloat = contentView.frame.size.height - 12
        iconContainer.frame = CGRect(x: 15, y: 6, width: size, height: size)
        
        let imageSize: CGFloat = size / 1
        iconImageView.frame = CGRect(x: (size - imageSize) / 2,
                                     y: (size - imageSize) / 2,
                                     width: imageSize,
                                     height: imageSize)
        
        label.frame = CGRect(x: 25 + iconContainer.frame.size.width,
                             y: 0,
                             width: contentView.frame.size.width - 20 - iconContainer.frame.size.width,
                             height: contentView.frame.size.height)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        accessoryView = nil
    }
}
