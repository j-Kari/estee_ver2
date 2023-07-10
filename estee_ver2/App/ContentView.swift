//
//  ContentView.swift
//  estee_base
//
//  Created by Jahnavi Kari on 7/4/23.
//

import SwiftUI

struct ContentView: View {
    // properties
    // body
    var body: some View {
        ZStack {
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
                        FeaturedTabView()
                        //    .padding(.vertical, 20)
                            .frame(minWidth: 400, minHeight: 400)
                        
                        CategoryGridView()
                            .padding(.vertical)
                        
                        TitleView(title: "Nutritious")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            } //for each end
                        }) // lazy vgrid end
                        .padding(.horizontal, 20)
                        
                        FooterView()
                            .padding(.horizontal)
                    } // VStack end
                }) // ScrollView End
                
            } // VStack end
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //ZStack end
        .ignoresSafeArea(.all, edges: .top)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
