//
//  ProductDetailView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/10/23.
//

import SwiftUI

struct ProductDetailView: View {
    //properties
    
    @EnvironmentObject var shop: Shop
    
    //body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // navigation
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // header
            HeaderDetailView()
                .padding(.horizontal)
            
            // top detail
            TopDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // bottom detail
            VStack(alignment: .center, spacing: 0, content: {
                // rating, size
                RatingsETCdetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                // description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                  //      .foregroundColor(.gray)
                //        .multilineTextAlignment(.leading)
                        .foregroundColor(space)
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                        .lineSpacing(5)
                }) // scroll end
                // quantity, favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                // add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }) // vstack end
            .padding(.horizontal)
            .background(
                ghost
                    .clipShape(CustomShape())
                    .padding(.top, -105))
        }) // vstack end
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color (hue: shop.selectedProduct?.hue ?? sampleProduct.hue, saturation: shop.selectedProduct?.saturation ?? sampleProduct.saturation, brightness: shop.selectedProduct?.brightness ?? sampleProduct.brightness))
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
