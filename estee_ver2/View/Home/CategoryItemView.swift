//
//  CategoryItemView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/9/23.
//

import SwiftUI

struct CategoryItemView: View {
    // properties
    
    let category: Category
    
    //body
    var body: some View {
        Button(action:{}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                   
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //Hstack end
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
        }) // button end
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
