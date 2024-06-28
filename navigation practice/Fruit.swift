//
//  Fruit.swift
//  navigation practice
//
//  Created by yuweiL on 27/6/2024.
//

import Foundation
import SwiftUI

enum Fruit: String, Hashable {
    case apple
    case blueberry
    case banana
    case orange
    case avocado
    
    var name: String {
        self.rawValue
    }
    
    var emoji: String {
        switch self {
            case .apple: return "🍎"
            case .blueberry: return "🫐"
            case .banana: return "🍌"
            case .orange: return "🍊"
            case .avocado: return "🥑"
        }
    }
    
    var tint: Color {
        switch self {
            case .apple: return .red
            case .blueberry: return .blue
            case .banana: return .yellow
            case .orange: return .orange
            case .avocado: return .green
        }
    }
    
    var whoIsNext: Fruit {
        switch self {
        case .apple: return .avocado
        case .avocado: return .banana
        case .banana: return .blueberry
        case .blueberry: return .orange
        case .orange: return .apple
        }
    }
}
