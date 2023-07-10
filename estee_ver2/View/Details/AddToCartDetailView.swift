//
//  AddToCartDetailView.swift
//  estee_ver2
//
//  Created by Kiran Kari on 7/10/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    // properties
    
    @EnvironmentObject var shop: Shop
    
    // body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) // end of button
        .padding(15)
        .background(Color(hue: shop.selectedProduct?.hue ?? sampleProduct.hue, saturation: shop.selectedProduct?.saturation ?? sampleProduct.saturation, brightness: shop.selectedProduct?.brightness ?? sampleProduct.brightness))
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
