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

// color

//let colorBackground: Color = Color("ColorBackground")
let colorBackground: Color = Color(UIColor.systemBackground)
let colorGray: Color = Color(UIColor.systemBlue)

// layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// ux
// api
// image
// font
// string
// misc
