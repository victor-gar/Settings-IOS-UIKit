//
//  Model.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//


struct Section {
    let option: [SettingOptionType]
}

struct SettingOption {
    let title: String
    let icon: String
}

struct SettingSwitchOption {
    let title: String
    let icon: String
    let isOn: Bool
}

enum SettingOptionType {
    case staticCell (model: SettingOption)
    case switchCell (model: SettingSwitchOption)
}

extension Section {
    static var data = [
        Section(option: [
            .switchCell(model: SettingSwitchOption(title: "Airplane", icon: "Airplane", isOn: false)),
            .staticCell(model: SettingOption(title: "Wi-Fi", icon: "Wi-Fi")),
            .staticCell(model: SettingOption(title: "Bluetooth", icon: "Bluetooth")),
            .staticCell(model: SettingOption(title: "Cellular", icon: "Cellular")),
        ]),
        
        Section(option: [
            .staticCell(model: SettingOption(title: "Notifications", icon: "Notifications")),
            .staticCell(model: SettingOption(title: "Sounds & Haptics", icon: "Sounds")),
            .staticCell(model: SettingOption(title: "Focus", icon: "Focus")),
            .staticCell(model: SettingOption(title: "Screen Time", icon: "Screen")),
        ]),
        
        Section(option: [
            .staticCell(model: SettingOption(title: "General", icon: "General")),
            .staticCell(model: SettingOption(title: "Control Center", icon: "Control")),
            .staticCell(model: SettingOption(title: "Display & Brightness", icon: "Display")),
            .staticCell(model: SettingOption(title: "Accessibity", icon: "Accessibity")),
            .staticCell(model: SettingOption(title: "Wallpaper", icon: "Wallpaper")),
            .staticCell(model: SettingOption(title: "Siri & Search", icon: "Siri")),
            .staticCell(model: SettingOption(title: "Emergency SOS", icon: "Emergency")),
            .staticCell(model: SettingOption(title: "Exposure Notifications", icon: "Exposure")),
            .staticCell(model: SettingOption(title: "Battery", icon: "Battery")),
            .staticCell(model: SettingOption(title: "Privacy & Security", icon: "Privacy")),
        ]),
        
        Section(option: [
            .staticCell(model: SettingOption(title: "App Store", icon: "App")),
            .staticCell(model: SettingOption(title: "Wallet & Apple Pay", icon: "Wallet"))
        ]),
        
        Section(option: [
            .staticCell(model: SettingOption(title: "Mail", icon: "Mail")),
            .staticCell(model: SettingOption(title: "Contacts", icon: "Contacts")),
            .staticCell(model: SettingOption(title: "Calendar", icon: "Calendar")),
            .staticCell(model: SettingOption(title: "Notes", icon: "Notes")),
            .staticCell(model: SettingOption(title: "Reminders", icon: "Reminders")),
            .staticCell(model: SettingOption(title: "Voice Memos", icon: "Voice")),
            .staticCell(model: SettingOption(title: "Phone", icon: "Phone")),
            .staticCell(model: SettingOption(title: "Messages", icon: "Messages")),
            .staticCell(model: SettingOption(title: "FaceTime", icon: "FaceTime")),
            .staticCell(model: SettingOption(title: "Safari", icon: "Safari")),
            .staticCell(model: SettingOption(title: "Weather", icon: "Weather")),
            .staticCell(model: SettingOption(title: "Translate", icon: "Translate")),
            .staticCell(model: SettingOption(title: "Maps", icon: "Maps")),
            .staticCell(model: SettingOption(title: "Compass", icon: "Compass")),
            .staticCell(model: SettingOption(title: "Measure", icon: "Measure")),
            .staticCell(model: SettingOption(title: "Shortcuts", icon: "Shortcuts")),
            .staticCell(model: SettingOption(title: "Health", icon: "Health"))
        ]),
        
        Section(option: [
            .staticCell(model: SettingOption(title: "Music", icon: "Music")),
            .staticCell(model: SettingOption(title: "Photos", icon: "Photos")),
            .staticCell(model: SettingOption(title: "Camera", icon: "Camera")),
            .staticCell(model: SettingOption(title: "Podcasts", icon: "Podcasts")),
            .staticCell(model: SettingOption(title: "Game Center", icon: "Game")),
        ])
    ]
}







