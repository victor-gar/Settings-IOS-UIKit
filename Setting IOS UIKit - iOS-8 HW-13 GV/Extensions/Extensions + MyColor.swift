//
//  Extensions + MyColor.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit

enum MyColor {
    case orangeAirPlane
    case cyanIcon
    case greenIcon
    case orangeIcon
    case purpleIcon
    case pinkIcon
}

extension MyColor {
    var value: UIColor {
        get {
            switch self {
            case .orangeAirPlane:
                return UIColor(red: 240/255, green: 154/255, blue: 56/255, alpha: 1.0)
            case .cyanIcon:
                return UIColor(red: 0/255, green: 121/255, blue: 255/255, alpha: 1.0)
            case .greenIcon:
                return UIColor(red: 105/255, green: 233/255, blue: 117/255, alpha: 1.0)
            case .orangeIcon:
                return UIColor(red: 235/255, green: 77/255, blue: 61/255, alpha: 1.0)
            case .purpleIcon:
                return UIColor(red: 86/255, green: 87/255, blue: 206/255, alpha: 1.0)
            case .pinkIcon:
                return UIColor(red: 234/255, green: 68/255, blue: 89/255, alpha: 1.0)
            }
        }
    }
}
