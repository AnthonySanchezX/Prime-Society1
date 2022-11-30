//
//  ContentView.swift
//  Prime Society
//
//  Created by Anthony Sanchez on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 100)]
    
    var body: some View {
        NavigationView() {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(productList, id: \.id){ product in ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
                            }
                            .navigationTitle(Text("Prime Society"))
                            .toolbar {
                                NavigationLink {
                                    CartView()
                                        .environmentObject(cartManager)
                                } label: {
                                    Carrito(numberOfProducts: cartManager.products.count)
                                }
                            }
                        }
                        .navigationViewStyle(StackNavigationViewStyle())
                    }
                }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
