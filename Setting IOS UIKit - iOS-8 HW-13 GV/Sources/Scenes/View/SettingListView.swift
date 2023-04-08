//
//  SettingListView.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 27.03.2023.
//

import UIKit

class SettingListView: UIView {
    
    weak var delegate: SettingControllerDelegate?
    
    func configureView(with models: [[Setting]]) {
        self.models = models
    }
    
    // MARK: - Private properties
    
    private var models = [[Setting]]()
    
    // MARK: - UI
    
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.delegate = self
        table.dataSource = self
        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        return table
    }()
    
    // MARK: - Initial
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.right.left.bottom.equalToSuperview()
        }
    }
    
    // MARK: - UITableViewDelegate & UITableViewDataSource
    
}
extension SettingListView: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].count
    }
    // MARK: - Setup cell
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier,for: indexPath) as? SettingTableViewCell
        
        cell?.configure(with: models[indexPath.section][indexPath.row])
        
        if indexPath.section == 0 {
            let switchView = UISwitch(frame: .zero)
            switchView.setOn(false, animated: true)
            switchView.tag = indexPath.row
            cell?.accessoryView = switchView
            cell?.selectionStyle = .default
        } else {
            cell?.accessoryType = .disclosureIndicator
        }
        return cell ?? SettingTableViewCell()
    }
    
    // MARK: - Open deail and throw data
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailView = DetailController()
        detailView.cell = models[indexPath.section][indexPath.row]
        
        switch indexPath.section {
        case 0:
            delegate?.pushDetail(cell: models[indexPath.section][indexPath.row])
        default:
            delegate?.pushDetail(cell: models[indexPath.section][indexPath.row])
        }
    }
}


