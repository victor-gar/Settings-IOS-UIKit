//
//  Model.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit

struct Section {
let option: [SettingOptionType]
}

struct SettingOption {
let title: String
let icon: UIImage?
let iconBackground: UIColor
let handler: (() -> Void)
}

struct SettingFullIcon {
let title: String
let icon: UIImage?
let iconBackground: UIColor
let handler: (() -> Void)
}

struct SettingSwitchOption {
let title: String
let icon: UIImage?
let iconBackground: UIColor
let handler: (() -> Void)
let isOn: Bool
}

enum SettingOptionType {
case staticCell (model: SettingOption)
case switchCell (model: SettingSwitchOption)
case iconFullCell (model: SettingFullIcon)
}

