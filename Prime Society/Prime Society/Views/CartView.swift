//
//  CartView.swift
//  Prime Society
//
//  Created by Anthony Sanchez on 12/10/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.paymentSuccess {
                Text("Orden Confirmada! Pronto recibiras un correo de confirmación")
                    .padding()
            } else {
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) { product in
                        ProductRow(product: product)
                    }
                    
                    HStack {
                        Text("Tu total es de:")
                        Spacer()
                        Text("$\(cartManager.total).00")
                            .bold()
                    }
                    .padding()
                    
                    Pay(action: cartManager.pay)
                        .padding()
                    
                } else {
                    Text("El carrito esta vacio.")
                }
            }
        }
        .navigationTitle(Text("Mi Carrito"))
        .padding(.top)
        .onDisappear {
            if cartManager.paymentSuccess {
                cartManager.paymentSuccess = false
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
