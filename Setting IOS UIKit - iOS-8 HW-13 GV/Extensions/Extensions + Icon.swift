//
//  Extensions + Icon.swift
//  Setting IOS UIKit - iOS-8 HW-13 GV
//
//  Created by Victor Garitskyu on 25.01.2023.
//

import UIKit

enum Icon {
    case bluetooth
    case vpn
    case clock
    case general
    case photos
    case sound
    case gameCenter
    case music
    case maps
    case safari
    case weather
    case display
    case appStore
    case calculator
    case compass
    case contacts
    case health
    case calendar
    case measure
    case podcasts
    case casenotes
    case translate
    case wallet
    case facetime
    case shortcuts
    case camera
    case mail
    case notes
    case reminders
    case voice
    case wallpaper
    case acces
    case exposure
    case home
    case siri
    case sos
    case control
}

extension Icon {
    var value: String {
        get {
            switch self {
            case .bluetooth:
                return String("bluetooth")
            case .vpn:
                return String("vpn")
            case .clock:
                return String("clock.png")
            case .general:
                return String("general.png")
            case .photos:
                return String("photos")
            case .sound:
                return String("sound")
            case .gameCenter:
                return String("gameCenter")
            case .music:
                return String("music")
            case .maps:
                return String("maps")
            case .safari:
                return String("safari")
            case .weather:
                return String("weather")
            case .display:
                return String("display")
            case .appStore:
                return String("appStore")
            case .calculator:
                return String("calculator")
            case .compass:
                return String("compass")
            case .contacts:
                return String("contacts")
            case .health:
                return String("health")
            case .calendar:
                return String("calendar")
            case .measure:
                return String("measure.png")
            case .podcasts:
                return String("podcasts.png")
            case .casenotes:
                return String("casenotes")
            case .translate:
                return String("translate")
            case .wallet:
                return String("wallet")
            case .facetime:
                return String("facetime")
            case .camera:
                return String("camera")
            case .shortcuts:
                return String("shortcuts")
            case .mail:
                return String("mail")
            case .notes:
                return String("notes")
            case .reminders:
                return String("reminders")
            case .voice:
                return String("voice")
            case .wallpaper:
                return String("wallpaper")
            case .acces:
                return String("acces")
            case .control:
                return String("control")
            case .exposure:
                return String("exposure")
            case .home:
                return String("home")
            case .siri:
                return String("siri")
            case .sos:
                return String("sos")
            }
        }
    }
}
