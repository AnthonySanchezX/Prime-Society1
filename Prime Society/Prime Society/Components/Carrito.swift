//
//  Carrito.swift
//  Prime Society
//
//  Created by Anthony Sanchez on 12/10/22.
//

import SwiftUI

struct Carrito: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
        }
    }
}

struct Carrito_Previews: PreviewProvider {
    static var previews: some View {
        Carrito(numberOfProducts: 1)
    }
}
