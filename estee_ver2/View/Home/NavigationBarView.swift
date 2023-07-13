//
//  NavigationBarView.swift
//  estee_base
//
//  Created by Jahnavi Kari on 7/8/23.
//

import SwiftUI

struct NavigationBarView: View {
    // properties
    
    @State private var showSearch = false
    @State private var visibleCart = false
    @State private var isAnimated: Bool = false
    
    
    // body
    var body: some View {
        HStack {
            Button(action: {
                showSearch.toggle()
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) // Button end
            /*.sheet(isPresented: $showSearch) {
                SearchView()
            }*/
            .fullScreenCover(isPresented: $showSearch, content: SearchView.init)
        
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1:0)
                .offset(x: 0, y: isAnimated ? 0:-25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {
                visibleCart.toggle()
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(space)
                    
                    Circle()
                        .fill(bright)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }) // Button end
            .fullScreenCover(isPresented: $visibleCart, content: CartView.init)
        } // HStack end
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
