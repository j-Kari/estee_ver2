//
//  ProductModel.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/10/23.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let size: String
    let description: String
    let color: [Double]
    
    var hue: Double { return color[0]}
    var saturation: Double { return color[1]}
    var brightness: Double { return color [2]}
    
    var formattedPrice: String { return "$\(price)"}
}
