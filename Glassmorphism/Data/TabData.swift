//
//  TabData.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/19/23.
//

import Foundation
enum Tab: String, CaseIterable {
    case homes = "Home"
    case browse = "Browse"
    case saved = "Saved"
    case account = "Account"
    
    var systemImage: String{
        switch self {
        case .homes:
            return "house"
        case.browse:
            return "square.grid.2x2"
        case.saved:
            return "bookmark"
        case .account:
            return "person.crop.circle"
        
        }
    }
    var index: Int {
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
    
    
}

