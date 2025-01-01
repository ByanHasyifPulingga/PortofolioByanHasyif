//
//  ProductCardView.swift
//  AppleShop
//
//  Created by Byan Hasyif on 28/12/24.
//

import SwiftUI

struct ProductCardView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack {
            Color(.white)
            
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading) {
                    Image(product.image)
                        .resizable()
                        .frame(width: 175, height: 160)
                        .cornerRadius(12)
                    
                    Text(product.name)
                        .font(.headline)
                        .foregroundColor(Color(.black))
                        .padding(.vertical, 1)
                    
                    Text(product.supplier)
                        .foregroundColor(.gray)
                        .font(.caption)
                        .padding(.vertical, 0.5)
                    
                    Text("$\(product.price)")
                        .bold()
                        .foregroundColor(Color(.black))
                }
                
                Button {
                    cartManager.addToCart(product: product)
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(Color("kPrimary"))
                        .frame(width: 35, height: 35)
                        .padding(.trailing)
                }
            }
        }
        .frame(width: 185, height: 260)
        .cornerRadius(15)
        .overlay( // Menambahkan garis tepi
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray, lineWidth: 1) // Warna abu-abu, garis tipis
        )
    }
}

#Preview {
    ProductCardView(product: productList[0])
        .environmentObject(CartManager())
}
