//
//  ViewController.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit
import SnapKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - Outlets
    
    private let screenSize: CGRect = UIScreen.main.bounds
    
    private var modells = [Section]()
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        table.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        table.register(FullIconTableViewCell.self, forCellReuseIdentifier: FullIconTableViewCell.identifier)
        return table
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        configure()
        view.addSubview(tableView)
        setupHierarchy()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        view.backgroundColor = .cyan
    }
    
    //MARK: - SetupHierarchy
    
    private func setupHierarchy(){
        tableView.snp.makeConstraints { make in
            make.top.right.left.bottom.equalTo(view)
        }
    }
    
    //MARK: - Setup
    
    func configure() {
        modells.append(Section(option: [
            .switchCell(model: SettingSwitchOption(title: "Airplane", icon: UIImage(systemName: "airplane"), iconBackground: MyColor.orangeAirPlane.value , handler: {}, isOn:  false)),
            .staticCell(model: SettingOption(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackground: MyColor.cyanIcon.value) { }),
            .staticCell(model: SettingOption(title: "Bluetooth", icon: UIImage(named: Icon.bluetooth.value), iconBackground: MyColor.cyanIcon.value) { }),
            .staticCell(model: SettingOption(title: "Cellular", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackground: MyColor.greenIcon.value){ }),
            .staticCell(model: SettingOption(title: "Personal Hotspot", icon: UIImage(systemName: "personalhotspot"), iconBackground: MyColor.greenIcon.value){ }),
            .switchCell(model: SettingSwitchOption(title: "VPN", icon: UIImage(named: Icon.vpn.value), iconBackground: MyColor.cyanIcon.value, handler: {}, isOn: false))
        ]))
        
        modells.append(Section(option: [
            .staticCell(model: SettingOption(title: "Notifications", icon: UIImage(systemName: "bell.badge.fill"), iconBackground: MyColor.orangeIcon.value) { }),
            .staticCell(model: SettingOption(title: "Sounds & Haptics", icon: UIImage(named: Icon.sound.value), iconBackground: MyColor.pinkIcon.value) { }),
            .staticCell(model: SettingOption(title: "Focus", icon: UIImage(systemName: "moon.fill"), iconBackground: MyColor.purpleIcon.value){ }),
            .staticCell(model: SettingOption(title: "Screen Time", icon: UIImage(systemName: "hourglass"), iconBackground: MyColor.purpleIcon.value){ }),
        ]))
        
        modells.append(Section(option: [
            .iconFullCell(model: SettingFullIcon(title: "General", icon: UIImage(named: Icon.general.value), iconBackground: .systemBlue){ }),
            .iconFullCell(model: SettingFullIcon(title: "Control Center", icon: UIImage(named: Icon.control.value), iconBackground: .gray){ }),
            .staticCell(model: SettingOption(title: "Display & Brightness", icon: UIImage(named: Icon.display.value), iconBackground: MyColor.cyanIcon.value){ }),
            .iconFullCell(model: SettingFullIcon(title: "Home Screen", icon: UIImage(named: Icon.home.value), iconBackground: .systemBlue){ }),
            .iconFullCell(model: SettingFullIcon(title: "Accessibity", icon: UIImage(named: Icon.acces.value), iconBackground: .systemBlue){ }),
            .iconFullCell(model: SettingFullIcon(title: "Wallpaper", icon: UIImage(named: Icon.wallpaper.value), iconBackground: .gray){ }),
            .iconFullCell(model: SettingFullIcon(title: "Siri & Search", icon: UIImage(named: Icon.siri.value), iconBackground: .red){ }),
            .iconFullCell(model: SettingFullIcon(title: "Face ID & Passcode", icon: UIImage(systemName: "faceid"), iconBackground: MyColor.greenIcon.value){ }),
            .iconFullCell(model: SettingFullIcon(title: "Emergency SOS", icon: UIImage(named: Icon.sos.value), iconBackground: .systemBlue){ }),
            .iconFullCell(model: SettingFullIcon(title: "Exposure Notifications", icon: UIImage(named: Icon.exposure.value), iconBackground: .gray){ }),
            .staticCell(model: SettingOption(title: "Battery", icon: UIImage(systemName: "battery.100"), iconBackground: MyColor.greenIcon.value){ }),
            .staticCell(model: SettingOption(title: "Privacy & Security", icon: UIImage(systemName: "hand.raised.fill"), iconBackground: MyColor.cyanIcon.value){ }),
        ]))
        
        modells.append(Section(option: [
            .iconFullCell(model: SettingFullIcon(title: "App Store", icon: UIImage(named: Icon.appStore.value), iconBackground: .systemBlue){}),
            .iconFullCell(model: SettingFullIcon(title: "Wallet & Apple Pay", icon: UIImage(named: Icon.wallet.value), iconBackground: .gray){})
        ]))
        
        modells.append(Section(option: [
            .staticCell(model: SettingOption(title: "Passwords", icon: UIImage(systemName: "key.fill"), iconBackground: .gray){ }),
            .iconFullCell(model: SettingFullIcon(title: "Mail", icon: UIImage(named: Icon.mail.value), iconBackground: .systemBlue){ }),
            .iconFullCell(model: SettingFullIcon(title: "Contacts", icon: UIImage(named: Icon.contacts.value), iconBackground: .red){ }),
            .iconFullCell(model: SettingFullIcon(title: "Calendar", icon: UIImage(named: Icon.calendar.value), iconBackground: .systemBlue){ }),
            .iconFullCell(model: SettingFullIcon(title: "Notes", icon: UIImage(named: Icon.notes.value), iconBackground: .gray){ }),
            .iconFullCell(model: SettingFullIcon(title: "Reminders", icon: UIImage(named: Icon.reminders.value), iconBackground: .red){ }),
            .iconFullCell(model: SettingFullIcon(title: "Voice Memos", icon: UIImage(named: Icon.voice.value), iconBackground: .systemBlue){ }),
            .staticCell(model: SettingOption(title: "Phone", icon: UIImage(systemName: "phone.fill"), iconBackground: MyColor.greenIcon.value){ }),
            .staticCell(model: SettingOption(title: "Messages", icon: UIImage(systemName: "message.fill"), iconBackground: MyColor.greenIcon.value){ }),
            .iconFullCell(model: SettingFullIcon(title: "FaceTime", icon: UIImage(named: Icon.facetime.value), iconBackground: .red){ }),
            .iconFullCell(model: SettingFullIcon(title: "Safari", icon: UIImage(named: Icon.safari.value), iconBackground: .systemBlue){ }),
            .iconFullCell(model: SettingFullIcon(title: "Weather", icon: UIImage(named: Icon.weather.value), iconBackground: .gray){ }),
            .iconFullCell(model: SettingFullIcon(title: "Translate", icon: UIImage(named: Icon.translate.value), iconBackground: .clear){ }),
            .iconFullCell(model: SettingFullIcon(title: "Maps", icon: UIImage(named: Icon.maps.value), iconBackground: .red){ }),
            .iconFullCell(model: SettingFullIcon(title: "Compass", icon: UIImage(named: Icon.compass.value), iconBackground: .systemBlue){ }),
            .iconFullCell(model: SettingFullIcon(title: "Measure", icon: UIImage(named: Icon.measure.value), iconBackground: .gray){ }),
            .iconFullCell(model: SettingFullIcon(title: "Shortcuts", icon: UIImage(named: Icon.shortcuts.value), iconBackground: .red){ }),
            .iconFullCell(model: SettingFullIcon(title: "Health", icon: UIImage(named: Icon.health.value), iconBackground: .red){ })
        ]))
        
        modells.append(Section(option: [
            .iconFullCell(model: SettingFullIcon(title: "Music", icon: UIImage(named: Icon.music.value), iconBackground: .systemBlue){}),
            .iconFullCell(model: SettingFullIcon(title: "Photos", icon: UIImage(named: Icon.photos.value), iconBackground: .gray){ }),
            .iconFullCell(model: SettingFullIcon(title: "Camera", icon: UIImage(named: Icon.camera.value), iconBackground: .gray){ }),
            .staticCell(model: SettingOption(title: "Books", icon: UIImage(systemName: "book.fill"), iconBackground: .orange){ }),
            .iconFullCell(model: SettingFullIcon(title: "Podcasts", icon: UIImage(named: Icon.podcasts.value), iconBackground: .white){ }),
            .iconFullCell(model: SettingFullIcon(title: "Game Center", icon: UIImage(named: Icon.gameCenter.value), iconBackground: .white){ }),
        ]))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return modells.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modells[section].option.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = modells[indexPath.section].option[indexPath.row]
        
        switch model.self {
        case .staticCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier,for: indexPath) as? SettingTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
            
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.identifier,for: indexPath) as? SwitchTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
            
        case .iconFullCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: FullIconTableViewCell.identifier,for: indexPath) as? FullIconTableViewCell else {
                return UITableViewCell()
            }
            cell.configure(with: model)
            return cell
        }
    }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            let type = modells[indexPath.section].option[indexPath.row]

            switch type.self {
            case .staticCell(let model):
                model.handler()
                let detailViewController = DetailView()
                detailViewController.detailIconColor(with: model)
                detailViewController.modells = modells
                tableView.deselectRow(at: indexPath, animated: true)
                navigationController?.pushViewController(detailViewController, animated: true)

            case .switchCell(let model):
                let detailViewController = DetailView()
                detailViewController.detailSwitch(with: model)
                detailViewController.modells = modells
                tableView.deselectRow(at: indexPath, animated: true)
                navigationController?.pushViewController(detailViewController, animated: true)
            case .iconFullCell(let model):
                model.handler()
                let detailViewController = DetailView()
                detailViewController.detailFullIcon(with: model)
                detailViewController.modells = modells
                tableView.deselectRow(at: indexPath, animated: true)
                navigationController?.pushViewController(detailViewController, animated: true)
            }
        }
    }
