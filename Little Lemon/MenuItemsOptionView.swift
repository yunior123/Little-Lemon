//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Yunior Rodriguez Osorio on 13/5/23.
//

import SwiftUI

struct MenuItemsOptionView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("SELECTED CATEGORIES")) {
                    Text(MenuCategory.food.rawValue)
                    Text(MenuCategory.drinks.rawValue)
                    Text(MenuCategory.dessert.rawValue)
                }
                Section(header: Text("SORT BY")) {
                    Text(MenuSort.mostPopular.rawValue)
                    Text(MenuSort.priceLowToHigh.rawValue)
                    Text(MenuSort.alphabetical.rawValue)
                }
            }
            .navigationBarTitle("Filter")
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
