//
//  ProductItemView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/10/23.
//

import SwiftUI

struct ProductItemView: View {
    //properties
    
    // UNUSED COMPONENT. IN ORIGINAL DESIGN BUT DIDN'T END UP USING
    let product: Product
    
    //body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            //photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } // zstack end
            .background(Color(hue: product.hue, saturation: product.saturation, brightness: product.brightness))
            .cornerRadius(12)
            
            // product title
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
           
            HStack {
                //price
                Text(product.formattedPrice)
                    .fontWeight(.semibold)
                    .foregroundColor(bright)
                
                //size
                Text(product.size)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
            } // hstack end
        }) // vstack end
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(ghost)
    }
}
