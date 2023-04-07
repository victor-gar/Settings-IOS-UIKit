//
//  SettingListView.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 27.03.2023.
//

import Foundation


import UIKit

class SettingListView: UIView {
    
    // MARK: - Private properties
    
    public var models:[Section] = []
    private var model = Section.data
    
    private var controller: MainViewController?

    func configureView(with models: [Section], controller: MainViewController) {
        self.models = models
        self.controller = controller
    }

    // MARK: - UI
    
    lazy var tableView: UITableView = {
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
        commonInit()
    }
    
    private func commonInit() {
        setupView()
        setupHierarchy()
        setupLayout()
        setupData(with: model)
    }
    
    private func setupData(with models: ([Section])) {
        self.models = models
    
    }
    // MARK: - Setups
    
    private func setupView() {
        print("list")

    }
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
            return models[section].option.count
        }
        // MARK: - Setup cell
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let modelsData = models[indexPath.section].option[indexPath.item]
            
            switch modelsData.self {
            case .staticCell(let model):
                guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier,for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
                cell.configure(with: model)
                return cell
            case .switchCell(let model):
                guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier,for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
                cell.configureSwitch(with: model)
                return cell
            }
        }
        
        // MARK: - Open deail and throw data
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            print("fox")
            let type = models[indexPath.section].option[indexPath.row]
            switch type.self {
            case .staticCell(let model):
                print("selectedCell1")
                print(model.icon)
                let detailViewController = DetailController()
                let detailModels = DetailView()
                detailModels.detailIconColor(with: model)
                detailViewController.modells = models
                controller?.navigationController?.pushViewController(detailViewController, animated: true)
            case .switchCell(let model):
                print("selectedCell2")
                print(model.icon)
                let detailViewController = DetailController()
                let detailModels = DetailView()
                detailModels.detailSwitch(with: model)
                detailViewController.modells = models
                controller?.navigationController?.pushViewController(detailViewController, animated: true)
            }
        }
    }


