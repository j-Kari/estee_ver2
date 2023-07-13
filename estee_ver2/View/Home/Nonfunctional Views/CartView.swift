//
//  CartView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/13/23.
//

import SwiftUI

struct CartView: View {
    //properties

    @State private var hideCart = false
    @State public var cartIsActive: Bool = true
    
    // body
    var body: some View {
        if cartIsActive == true {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        hideCart.toggle()
                    }, label: {
                        Image(systemName: "chevron.right")
                            .font(.title)
                            .foregroundColor(space)
                    }) // Button end
                    .fullScreenCover(isPresented: $hideCart, content: ContentView.init)
                    .padding(.horizontal,40)
                } //hstack end
                
                Text("CART")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .fontWeight(.heavy)
                    .padding(2)
                
                Text("**NON-FUNCTIONAL PAGE (MVP).** \nCLICK THE CHEVRON TO GO BACK TO THE HOME PAGE")
                    .font(.caption)
                    .multilineTextAlignment(.center)
                    .padding(2)
                    .padding(.horizontal, 30)
                
                Spacer()
                
            } // vstack end
        } // if end
        else {
            ContentView()
        } // else end
    } //vstack end
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
