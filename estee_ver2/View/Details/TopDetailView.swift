//
//  TopDetailView.swift
//  estee_ver2
//
//  Created by Kiran Kari on 7/10/23.
//

import SwiftUI

struct TopDetailView: View {
    //property
    
    @State private var isAnimating: Bool = false
    
    //body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // Price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }) // vstack end
            .offset(y: isAnimating ? -50 : -75)
            
            
            Spacer()
            
            // photo
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .padding()
                .offset(y: isAnimating ? 0 : -35)
        }) // hstack end
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct TopDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
