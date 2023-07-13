//
//  CategoryDetailView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/13/23.
//

import SwiftUI

struct CategoryDetailView: View {
    //properties
    @State private var hideCat = false
    @State public var catActive: Bool = true
    
    // body
    var body: some View {
        if catActive == true {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        hideCat.toggle()
                    }, label: {
                        Image(systemName: "chevron.right")
                            .font(.title)
                            .foregroundColor(space)
                    }) // Button end
                    .fullScreenCover(isPresented: $hideCat, content: ContentView.init)
                    .padding(.horizontal,40)
                } //hstack end
                
                Text("PRODUCTS")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .fontWeight(.heavy)
                    .padding(2)
                
                Text("X CATEGORY")
                    .font(.caption2)
                    .multilineTextAlignment(.center)
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
    }
}

struct CategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailView()
    }
}
