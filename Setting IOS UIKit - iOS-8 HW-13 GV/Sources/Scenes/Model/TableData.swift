//
//  TableData.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 08.04.2023.
//

import Foundation

class TableData {
    var data: [[Setting]] = [
        [Setting(title: "Airplane", icon: "Airplane", toggle: true),
         Setting(title: "Wi-Fi", icon: "Wi-Fi"),
         Setting(title: "Bluetooth", icon: "Bluetooth"),
         Setting(title: "Cellular", icon: "Cellular")
        ],
      
        [Setting(title: "Notifications", icon: "Notifications"),
         Setting(title: "Sounds & Haptics", icon: "Sounds"),
         Setting(title: "Focus", icon: "Focus"),
         Setting(title: "Screen Time", icon: "Screen")],

        [Setting(title: "General", icon: "General"),
         Setting(title: "Control Center", icon: "Control"),
         Setting(title: "Display & Brightness", icon: "Display"),
         Setting(title: "Accessibity", icon: "Accessibity"),
         Setting(title: "Wallpaper", icon: "Wallpaper"),
         Setting(title: "Siri & Search", icon: "Siri"),
         Setting(title: "Emergency SOS", icon: "Emergency"),
         Setting(title: "Exposure Notifications", icon: "Exposure"),
         Setting(title: "Battery", icon: "Battery"),
         Setting(title: "Privacy & Security", icon: "Privacy")],

        [Setting(title: "App Store", icon: "App"),
         Setting(title: "Wallet & Apple Pay", icon: "Wallet")],

        [Setting(title: "Music", icon: "Music"),
         Setting(title: "Photos", icon: "Photos"),
         Setting(title: "Camera", icon: "Camera"),
         Setting(title: "Podcasts", icon: "Podcasts"),
         Setting(title: "Game Center", icon: "Game")]
        ]
}
