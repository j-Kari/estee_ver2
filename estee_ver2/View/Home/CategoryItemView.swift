//
//  CategoryItemView.swift
//  estee_ver2
//
//  Created by Kiran Kari on 7/9/23.
//

import SwiftUI

struct CategoryItemView: View {
    var body: some View {
        /*Button(action:{}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    
            }
        })*/
        Text("Hello World!")
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(/*category: categories[0]*/)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
