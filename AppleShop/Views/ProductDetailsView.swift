//
//  ProductDetailsView.swift
//  AppleShop
//
//  Created by Byan Hasyif on 31/12/24.
//

import SwiftUI

struct ProductDetailsView: View {
    var product: Product
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 63)
                            .padding(.trailing, 20)
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.title2)
                            
                            Spacer()
                            
                            Text("$\(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("kPrimary"))
                                .cornerRadius(12)
                        }
                        
                        .padding(.vertical)
                        
                        HStack{
                            HStack(spacing: 10){
                                ForEach(0..<5){index in
                                    Image(systemName:("star.fill"))
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(Color(.yellow))
                                }
                                
                                Text("(4.5)")
                                    .foregroundColor(Color(.gray))
                            }
                            .padding(.vertical)
                            
                            Spacer()
                            
                            HStack{
                                Button(action:{}, label:{
                                    Image(systemName: "minus.square")
                                })
                                
                                Text("1")
                                
                                Button(action:{}, label:{
                                    Image(systemName: "plus.square.fill")
                                        .foregroundColor(Color("kSecondary"))
                                })
                            }
                        }
                        
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text(product.description)
                        Spacer()
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("Size")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                
                                Text("Height: \(product.height)")
                                    .foregroundColor(Color(.gray))
                                Text("Height: \(product.width)")
                                    .foregroundColor(Color(.gray))
                                Text("Height: \(product.weight)")
                                    .foregroundColor(Color(.gray))
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Spacer()
                            
                            VStack(alignment: .leading){
                                Text("Color")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                
                                HStack {
                                    ForEach(product.colors, id: \.self) { color in
                                        Circle()
                                            .fill(color)
                                            .frame(width: 20, height: 20)
                                    }
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.vertical)
                        
                        PaymentButton(action: {
                            
                        })
                        .frame(width: .infinity, height: 35)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .offset(y: -30)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    ProductDetailsView(product: productList[4])
}


struct ColorDotView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 25, height: 25)
            .clipShape(Circle())
    }
}