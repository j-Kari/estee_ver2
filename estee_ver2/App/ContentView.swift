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
                    // anything that could replace the deprecated code??
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            
                            VideoView()
                                .scaledToFit()
                                .padding(.bottom, 80)
                            
                            HashTagView()
                               // .padding(.bottom, 30)
                                .padding(.bottom, 30)
                            
                            Highlights()
                            
                            FeaturedTabView()
                            //    .padding(.vertical, 20)
                                .frame(minWidth: 400, minHeight: 400)
                            
                            ReviewView()
                              //  .padding(.bottom, 70)
                                .padding(.bottom, 10)
                            
                            Text("#SHOP")
                                .font(.largeTitle)
                                .multilineTextAlignment(.center)
                                .fontWeight(.heavy)
                                .padding(2)
                                .padding(.top, 70)
                            
                            ProductGallery()
                                .padding(.vertical)
                                .frame(minWidth: 300, minHeight: 300)
                            
                            
                            CategoryGridView()
                                .padding(.vertical)
                                .padding(.bottom, 20)
                            
                            Spacer()
                            
                            FooterView()
                                .padding(.horizontal)
                                .background(.gray)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                        } // VStack end
                    }) // ScrollView End
                    
                } // VStack end
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //ZStack end
        .ignoresSafeArea(.all, edges: .vertical)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro")
            .environmentObject(Shop())
    }
}
