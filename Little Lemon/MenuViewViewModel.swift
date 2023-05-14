//
//  MenuViewViewModel.swift
//  Little Lemon
//
//  Created by Yunior Rodriguez Osorio on 13/5/23.
//

import Foundation

extension MenuItemsView {
    
    @MainActor class MenuViewViewModel : ObservableObject {
        @Published var menuItems = [MenuItem]()
        @Published var selectedCategory: MenuCategory = .food
        @Published var selectedSort: MenuSort = .mostPopular
        @Published var showSheet: Bool = false
        
        
        let foodMenuItems = [
            MenuItem(title: "Pasta with tomato sauce", ingredients: [.pasta, .tomatoSauce], price: 5.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with spinach", ingredients: [.pasta, .spinach], price: 6.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with broccoli", ingredients: [.pasta, .broccoli], price: 7.99, menuCategory: .food, ordersCount: 0,popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with carrot", ingredients: [.pasta, .carrot], price: 8.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with tomato sauce and spinach", ingredients: [.pasta, .tomatoSauce, .spinach], price: 9.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with tomato sauce and broccoli", ingredients: [.pasta, .tomatoSauce, .broccoli], price: 10.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with tomato sauce and carrot", ingredients: [.pasta, .tomatoSauce, .carrot], price: 11.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with spinach and broccoli", ingredients: [.pasta, .spinach, .broccoli], price: 12.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with spinach and carrot", ingredients: [.pasta, .spinach, .carrot], price: 13.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with broccoli and carrot", ingredients: [.pasta, .broccoli, .carrot], price: 14.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with tomato sauce, spinach and broccoli", ingredients: [.pasta, .tomatoSauce, .spinach, .broccoli], price: 15.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Pasta with tomato sauce, spinach and carrot", ingredients: [.pasta, .tomatoSauce, .spinach, .carrot], price: 16.99, menuCategory: .food, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            
            
        ]
        let drinkMenuItems = [
            MenuItem(title: "Water", ingredients: [], price: 0.99, menuCategory: .drinks, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Coke", ingredients: [], price: 1.99, menuCategory: .drinks, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Sprite", ingredients: [], price: 2.99, menuCategory: .drinks, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Fanta", ingredients: [], price: 3.99, menuCategory: .drinks, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Water with lemon", ingredients: [.lemon], price: 4.99, menuCategory: .drinks, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Coke with lemon", ingredients: [.lemon], price: 5.99, menuCategory: .drinks, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Sprite with lemon", ingredients: [.lemon], price: 6.99, menuCategory: .drinks, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Fanta with lemon", ingredients: [.lemon], price: 7.99, menuCategory: .drinks, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            
            
            
        ]
        let dessertMenuItems = [
            
            MenuItem(title: "Ice cream", ingredients: [], price: 8.99, menuCategory: .dessert, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Ice cream with lemon", ingredients: [.lemon], price: 9.99, menuCategory: .dessert, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Ice cream with spinach", ingredients: [.spinach], price: 10.99, menuCategory: .dessert, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            MenuItem(title: "Ice cream with broccoli", ingredients: [.broccoli], price: 11.99, menuCategory: .dessert, ordersCount: 0, popularity: 0.0, image:"https://us.coca-cola.com/content/dam/nagbrands/us/coke/en/home/coca-cola-original-20oz.png"),
            
            
            
            
        ]
        
        init() {
            menuItems = foodMenuItems + drinkMenuItems + dessertMenuItems
        }
        
        func getMenuItems(for category: MenuCategory) -> [MenuItem] {
            menuItems.filter { $0.menuCategory == category }
        }
        
        
        
        func filterMenuItems() -> [MenuItem] {
            var filteredMenuItems = menuItems
            
            if selectedCategory != .all {
                filteredMenuItems = filteredMenuItems.filter { $0.menuCategory == selectedCategory }
            }
            
            switch selectedSort {
            case .mostPopular:
                filteredMenuItems.sort { $0.popularity > $1.popularity }
            case .priceLowToHigh:
                filteredMenuItems.sort { $0.price < $1.price }
            case .alphabetical:
                filteredMenuItems.sort { $0.title < $1.title }
            }
            
            return filteredMenuItems
        }
    }
    
    
}

