//
//  FeaturedTabView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/9/23.
//

import SwiftUI

struct ProductGallery: View {
    // property
    
    @EnvironmentObject var shop: Shop
    
    // body
    var body: some View {
        TabView {
            ForEach(products) { product in
                FeaturedProductView(product: product)
                    .onTapGesture {
                        feedback.impactOccurred()
                        
                        withAnimation(.easeOut) {
                            shop.selectedProduct = product
                            shop.showingProduct = true
                        }
                    }
                    // .padding(.top, 10)
            } // End of ForEach
        } // End of TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct ProductGallery_Previews: PreviewProvider {
    static var previews: some View {
        ProductGallery()
            .previewDevice("iPhone 14 Pro")
            .background(ghost)
            .environmentObject(Shop())
        
    }
}

/*                            TitleView(title: "Nutritious")
 
 LazyVGrid(columns: gridLayout, spacing: 15, content: {
     ForEach(products) { product in
         ProductItemView(product: product)
             .onTapGesture {
                 feedback.impactOccurred()
                 
                 withAnimation(.easeOut) {
                     shop.selectedProduct = product
                     shop.showingProduct = true
                 }
             }
     } //for each end
 }) // lazy vgrid end
 .padding(.horizontal, 20)
 .padding(.bottom, 30)*/
