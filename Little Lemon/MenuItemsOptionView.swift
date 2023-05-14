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
                    Text("Food")
                    Text("Drink")
                    Text("Dessert")
                }
                Section(header: Text("SORT BY")) {
                    Text("Most Popular")
                    Text("Price $-$$$")
                    Text("A-Z")
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
