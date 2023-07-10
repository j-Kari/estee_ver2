//
//  HeaderDetailView.swift
//  estee_ver2
//
//  Created by Kiran Kari on 7/10/23.
//

import SwiftUI

struct HeaderDetailView: View {
    // properties
    //body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Nutritious")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }) // vstack end
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
