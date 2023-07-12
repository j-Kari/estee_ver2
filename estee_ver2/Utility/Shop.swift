//
//  Shop.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/10/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
