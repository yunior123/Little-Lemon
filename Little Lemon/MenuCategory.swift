//
//  MenuCategory.swift
//  Little Lemon
//
//  Created by Yunior Rodriguez Osorio on 13/5/23.
//

import Foundation


protocol MenuItemProtocol{

    var title: String { get }
    var ingredients: [Ingredient] { get }
    var price: Double { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var id: UUID { get }
    var popularity: Double { get }
    var image: String { get }


}


enum  MenuCategory: String, CaseIterable, Codable, Hashable {
    case drinks = "Drinks"
    case food = "Food"
    case dessert = "Dessert"
    case all = "All"
}
    

struct MenuItem : Identifiable, Codable, Hashable, MenuItemProtocol {
    var id = UUID()
    var title: String
    var ingredients: [Ingredient]
    var price: Double
    var menuCategory: MenuCategory
    var ordersCount: Int = 0
    var popularity: Double = 0.0
    var image: String
    
    
}

enum MenuSort : String, CaseIterable, Codable, Hashable {
    case mostPopular = "Most Popular"
    case priceLowToHigh = "Price $-$$$"
    case alphabetical = "A-Z"
 
}
