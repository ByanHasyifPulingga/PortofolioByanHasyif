//
//  Product.swift
//  AppleShop
//
//  Created by Byan Hasyif on 27/12/24.
//

import Foundation
import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var height: String
    var width: String
    var weight: String
    var colors: [Color]
}

extension Color {
    static let deepPurple = Color(red: 88 / 255, green: 86 / 255, blue: 214 / 255) // Deep Purple (iPhone 14 Pro)
    static let gold = Color(red: 255 / 255, green: 223 / 255, blue: 186 / 255) // Gold
    static let silver = Color(red: 242 / 255, green: 242 / 255, blue: 247 / 255) // Silver
    static let spaceBlack = Color(red: 28 / 255, green: 28 / 255, blue: 30 / 255) // Space Black

    static let naturalTitanium = Color(red: 198 / 255, green: 195 / 255, blue: 189 / 255) // Natural Titanium (iPhone 15/16 Pro)
    static let blueTitanium = Color(red: 112 / 255, green: 140 / 255, blue: 192 / 255) // Blue Titanium
    static let whiteTitanium = Color(red: 246 / 255, green: 246 / 255, blue: 248 / 255) // White Titanium
    static let blackTitanium = Color(red: 28 / 255, green: 28 / 255, blue: 30 / 255) // Black Titanium (similar to Space Black)

    static let spaceBlackMB = Color(red: 28 / 255, green: 28 / 255, blue: 30 / 255) // Space Black (MacBook Pro)
    static let silverMB = Color(red: 229 / 255, green: 229 / 255, blue: 234 / 255) // Silver (MacBook Pro)

    static let spaceBlackIPad = Color(red: 28 / 255, green: 28 / 255, blue: 30 / 255) // Space Black (iPad Pro)
    static let silverIPad = Color(red: 242 / 255, green: 242 / 255, blue: 247 / 255) // Silver (iPad Pro)
}


var productList = [
    Product(name: "iPhone 15 Pro 128GB",
            image: "ip15p",
            description: "The iPhone 15 Pro features a lightweight titanium design, a 6.1-inch Super Retina XDR display, and the A17 Pro chip for unparalleled performance. Its advanced 48MP camera system, USB-C connectivity, and exceptional battery life make it the pinnacle of innovation and versatility.",
            supplier: "Apple",
            price: 999,
            height: "146,6 mm",
            width: "70,6 mm",
            weight: "187 g",
            colors: [.naturalTitanium, .blueTitanium, .whiteTitanium, .blackTitanium]),
    
    Product(name: "iPhone 16 Pro 128GB",
            image: "ip16p",
            description: "The iPhone 16 Pro pushes boundaries with its sleek design, 6.1-inch Super Retina XDR display, and the groundbreaking A18 Bionic chip. Featuring a 48MP advanced camera system, USB-C connectivity, and enhanced battery life, it delivers unmatched performance and cutting-edge technology.",
            supplier: "Apple",
            price: 999,
            height: "147,5 mm",
            width: "71,5 mm",
            weight: "194 g",
            colors: [.naturalTitanium, .blueTitanium, .whiteTitanium, .blackTitanium]),
    
    Product(name: "iPhone 14 Pro 128GB",
            image: "ip14p",
            description: "The iPhone 14 Pro features a 6.1-inch Super Retina XDR display, the powerful A16 Bionic chip, and a 48MP triple-camera system for pro-level photography. With Dynamic Island, improved battery life, and premium design, it’s the ultimate blend of innovation and style.",
            supplier: "Apple",
            price: 1219,
            height: "148,9 mm",
            width: "71,3 mm",
            weight: "206 g",
            colors: [.deepPurple, .gold, .silver, .spaceBlack]),
    
    Product(name: "MacBook Pro M3 Max",
            image: "mbpp",
            description: "The MacBook Pro with M3 Max chip offers exceptional performance with up to 40 GPU cores and a Liquid Retina XDR display. Perfect for demanding tasks, it combines power, efficiency, and versatility for professionals.",
            supplier: "Apple",
            price: 3199,
            height: "16,8 mm",
            width: "355,7 mm",
            weight: "2,15 kg",
            colors: [.spaceBlackMB, .silverMB]),
    
    Product(name: "iPad Pro M4 1TB",
            image: "iPadp",
            description: "The iPad Pro with M4 chip delivers unmatched performance, featuring a stunning Liquid Retina XDR display, advanced Apple Pencil support, and powerful multitasking capabilities. It’s the ultimate device for creativity and productivity on the go.",
            supplier: "Apple",
            price: 1499,
            height: "281,6 mm",
            width: "215,5 mm",
            weight: "579 g",
            colors: [.spaceBlackIPad, .silverIPad]),
]
