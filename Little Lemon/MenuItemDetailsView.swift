//
//  MenuItemDetailsView.swift
//  Little Lemon
//
//  Created by Yunior Rodriguez Osorio on 13/5/23.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var item: MenuItemProtocol
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center) {
                    
                    Image("Little-Lemon")
                        .resizable()
                        .scaledToFit()
                        .padding(.leading, 10)
                        .frame(width: 300, height: 300, alignment: .center)
                        
                
                    Text("\(item.price)")
                        .font(.title)
                        .fontWeight(.light)
                        .padding(.leading, 10)

                        Text("Orders")
                            .font(.title)
                            .fontWeight(.light)
                            .padding(.leading, 10)

                        Text(" \(item.ordersCount)")
                            .font(.title)
                            .fontWeight(.light)
                            .padding(.leading, 10)
                            



                    Text("Ingredients")
                        .font(.title)
                        .fontWeight(.light)
                        .padding(.leading, 10)

                    ForEach(item.ingredients) { ingredient in
                        Text(ingredient.rawValue)
                            .font(.title)
                            .fontWeight(.light)
                            .padding(.leading, 10)
                    }
                    Button(action: {}) {
                        Text("Add to cart")
                            .font(.title)
                            .fontWeight(.light)
                            .padding(.leading, 10)
                    }
                }
             
            }
            .navigationBarTitle(item.title)
        }
        
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(item: MenuItem(title: "test", ingredients: [], price: 0.0, menuCategory: .all, ordersCount: 0, popularity: 0.0, image: "test"))
    }
}
