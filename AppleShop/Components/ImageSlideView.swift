//
//  ImageSlideView.swift
//  AppleShop
//
//  Created by Byan Hasyif on 27/12/24.
//

import SwiftUI

struct ImageSlideView: View {
    @State private var currentIndex = 0
    var slides: [String] = ["ip14", "ip15", "ip16", "mbp", "iPad"]
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(slides[currentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 180)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            HStack{
                ForEach(0..<slides.count){index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear{
                Timer.scheduledTimer(withTimeInterval: 5, repeats: true){ timer in
                    if self.currentIndex + 1 == self.slides.count{
                        self.currentIndex = 0
                    }
                    else {
                        self.currentIndex += 1
                    }
                }
            }
    }
}

struct ImageSlideView_Previews {
    static var previews: some View {
        ImageSlideView()
    }
}

#Preview {
    ImageSlideView()
}
