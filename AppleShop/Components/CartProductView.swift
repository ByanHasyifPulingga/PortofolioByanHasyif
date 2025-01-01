//
//  CartProductView.swift
//  AppleShop
//
//  Created by Byan Hasyif on 29/12/24.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 5){
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
                    .bold()
            }
            .padding()
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .cornerRadius(9)
        .frame(width: .infinity, alignment: .leading)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray, lineWidth: 1.5)
        )
        .padding()
    }
}

#Preview {
    CartProductView(product: productList[2])
        .environmentObject(CartManager())
}
