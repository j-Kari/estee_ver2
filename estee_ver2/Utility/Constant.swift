//
//  Constant.swift
//  estee_base
//
//  Created by Jahnavi Kari on 7/8/23.
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
let ghost = Color(red: 0.9725, green: 0.9725, blue: 1.0)
let mimi = Color(red: 1.0, green: 0.8549, blue: 0.9137)
let space = Color(red: 0.1412, green: 0.1647, blue: 0.289)
let bright = Color(red: 0.9843, green: 0.3765, blue: 0.498)
let yinmn = Color(red: 0.0235, green: 0.2902, blue: 0.4235)

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
