//
//  FeaturedItemView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/9/23.
//

import SwiftUI

struct FeaturedItemView: View {
   // properties
    
    let model: Model
    
    var body: some View {
        Image(model.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(model: models[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(ghost)
    }
}
