//
//  ContentView.swift
//  estee_base
//
//  Created by Jahnavi Kari on 7/4/23.
//

import SwiftUI
import UIKit
import AVKit

struct ContentView: View {
    // properties
    
    @EnvironmentObject var shop: Shop
    let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "video", withExtension: "mp4")!)
    
    // body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top,
                                 UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            
                            VideoView()
                                .scaledToFit()
                                .padding(.bottom, 70)
                            
                            HashTagView()
                               // .padding(.bottom, 30)
                            
                            FeaturedTabView()
                            //    .padding(.vertical, 20)
                                .frame(minWidth: 400, minHeight: 400)
                            
                            ReviewView()
                                .padding(.bottom, 70)
                            
                            TitleView(title: "Nutritious")
                            
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
                            .padding(.bottom, 30)
                            
                            CategoryGridView()
                                .padding(.vertical)
                                .padding(.bottom, 20)
                            
                            FooterView()
                                .padding(.horizontal)
                        } // VStack end
                    }) // ScrollView End
                    
                } // VStack end
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //ZStack end
        .ignoresSafeArea(.all, edges: .top)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro")
            .environmentObject(Shop())
    }
}
