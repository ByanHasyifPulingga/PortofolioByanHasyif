//
//  SearchView.swift
//  AppleShop
//
//  Created by Byan Hasyif on 28/12/24.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    var body: some View {
        HStack {
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                
                TextField("Search Apple Products", text: $search)
                    .padding()
            }
            .background(Color("kPrimary"))
            .cornerRadius(12)
            
            Image(systemName: "camera")
                .padding()
                .foregroundColor(.white)
                .background(Color("kSecondary"))
                .cornerRadius(12)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
