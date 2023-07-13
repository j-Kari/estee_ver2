//
//  RatingsSizesDetailView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/10/23.
//

import SwiftUI

struct RatingsETCdetailView: View {
    // property
    
    let shades: [String] = ["L", "M", "D", "LW", "HC"]
    
    
    // body
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // ratings
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(bright)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) {item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(bright.cornerRadius(5))
                                .foregroundColor(ghost)
                        }) // button end
                    } // for each end
                }) // hstack 2 end
            }) // vstack 2 end
            Spacer()
                
                // sizes
                VStack(alignment: .trailing, spacing: 3, content: {
                    Text("Shades")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(bright)
                    HStack(alignment: .center, spacing: 5, content: {
                        ForEach(shades, id: \.self) { shade in
                            Button(action: {}, label: {
                                Text(shade)
                                    .font(.footnote)
                                    .fontWeight(.heavy)
                                    .foregroundColor(bright)
                                    .frame(width: 28, height: 28, alignment: .center)
                                    .background(ghost.cornerRadius(5))
                                    .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(bright, lineWidth: 2)
                                    ) // background end
                            })
                        }
                    })
            }) // vstack end
        }) // hstack end
    }
}

struct RatingsETCdetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsETCdetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
