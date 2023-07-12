//
//  FeaturedItemView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/9/23.
//

import SwiftUI

struct FeaturedProductView: View {
   // properties
    
    let product: Product
    
    var body: some View {
        Image(product.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedProductView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedProductView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
