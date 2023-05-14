//
//  MenuItemsView.swift
//  Little Lemon
//
//  Created by Yunior Rodriguez Osorio on 13/5/23.
//

import SwiftUI

struct ProgressView : View {
    var body: some View {
        Text("Loading...")
    }
}

struct MenuItemsView: View {
    
    @StateObject private var vm = MenuViewViewModel()
    
    
    var body: some View {
        NavigationView {
            
            
            
            ScrollView {
                Text("Drinks")
                    .font(.title)
                    .fontWeight(.light)
                    .padding(.leading, 10)
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))]) {
                    ForEach(vm.drinkMenuItems) { item in
                        NavigationLink(destination: MenuItemDetailsView( item: item)) {
                            VStack(alignment: .leading) {
                                Text(" \(item.title)")
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                
                                AsyncImage(url: URL(string: item.image) )
                                { image in
                                    image.resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100)
                                } placeholder: {
                                    ProgressView()
                                }
                                
                                
                                
                                Text("Price \(item.price)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                        }
                    }
                }
                
                
                Text("Food")
                    .font(.title)
                    .fontWeight(.light)
                    .padding(.leading, 10)
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))]) {
                    ForEach(vm.foodMenuItems) { item in
                        NavigationLink(destination: MenuItemDetailsView(item: item)) {
                            VStack(alignment: .leading) {
                                Text(" \(item.title)")
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                AsyncImage(url: URL(string: item.image) )
                                { image in
                                    image.resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100)
                                } placeholder: {
                                    ProgressView()
                                }
                                Text("Price \(item.price)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                        }
                    }
                }
                
                Text("Dessert")
                    .font(.title)
                
                    .fontWeight(.light)
                    .padding(.leading, 10)
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))]) {
                    ForEach(vm.dessertMenuItems) { item in
                        NavigationLink(destination: MenuItemDetailsView(item: item)) {
                            VStack(alignment: .leading) {
                                Text(" \(item.title)")
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                AsyncImage(url: URL(string: item.image) )
                                { image in
                                    image.resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100)
                                } placeholder: {
                                    ProgressView()
                                }
                                Text(" \(item.price)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                        }
                    }
                }
                
                .navigationBarTitle("Menu")
                .navigationBarItems(trailing:
                                        Button(action: {
                    vm.showSheet.toggle()
                }) {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                }
                                    
                                    
                                    
                )
                
            }
            .sheet(isPresented: $vm.showSheet) {
                MenuItemsOptionView()
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
