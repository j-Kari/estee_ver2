//
//  RatingsSizesDetailView.swift
//  estee_ver2
//
//  Created by Kiran Kari on 7/10/23.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // property
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // body
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // ratings
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) {item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }) // button end
                    } // for each end
                }) // hstack 2 end
            }) // vstack 2 end
            Spacer()
                
                // sizes
                VStack(alignment: .trailing, spacing: 3, content: {
                    Text("sizes")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(colorGray)
                    HStack(alignment: .center, spacing: 5, content: {
                        ForEach(sizes, id: \.self) { size in
                            Button(action: {}, label: {
                                Text(size)
                                    .font(.footnote)
                                    .fontWeight(.heavy)
                                    .foregroundColor(colorGray)
                                    .frame(width: 28, height: 28, alignment: .center)
                                    .background(Color.white.cornerRadius(5))
                                    .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                    ) // background end
                            })
                        }
                    })
            }) // vstack end
        }) // hstack end
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
