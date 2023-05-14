//
//  Ingredient.swift
//  Little Lemon
//
//  Created by Yunior Rodriguez Osorio on 13/5/23.
//

import Foundation

enum Ingredient : String, CaseIterable, Codable, Hashable, Identifiable {
    var id: String { self.rawValue }
    case spinach = "Spinach"
    case broccoli = "Broccoli"
    case carrot = "Carrot"
    case pasta = "Pasta"
    case tomatoSauce = "Tomato sauce"
    case lemon = "Lemon"
}
