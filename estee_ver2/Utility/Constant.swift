//
//  Constant.swift
//  estee_base
//
//  Created by Kiran Kari on 7/8/23.
//

import SwiftUI

// data

let models: [Model] = Bundle.main.decode("model.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")

let sampleProduct: Product = products[0]

// color

//let colorBackground: Color = Color("ColorBackground")
let colorBackground: Color = Color(UIColor.systemBackground)
let colorGray: Color = Color(UIColor.systemPink)

// layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// ux

let feedback = UIImpactFeedbackGenerator(style: .medium)

// api
// image
// font
// string
// misc
