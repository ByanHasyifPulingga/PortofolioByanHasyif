//
//  HomePageView.swift
//  AppleShop
//
//  Created by Byan Hasyif on 28/12/24.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    AppBar()
                    
                    SearchView()
                    
                    ImageSlideView()
                    
                    HStack {
                        Text("New Rivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            ProductsView()
                        }, label: {
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color("kPrimary"))
                           })
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(productList, id: \.id){product in
                                NavigationLink{
                                    ProductDetailsView(product: product)
                                } label: {
                                    ProductCardView(product: product)
                                        .environmentObject(cartManager)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                }
            }
        }
        .environmentObject(cartManager)
    }
}



struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("Purbalingga, Central Java")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CartView()
                        .environmentObject(cartManager)
                    ){
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                }
                Text("Find The")
                    .font(.title .bold())
                
                + Text(" Apple Products")
                    .font(.title .bold())
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}

#Preview {
    HomePageView()
        .environmentObject(CartManager())
}
