//
//  FeaturedTabView.swift
//  estee_ver2
//
//  Created by Kiran Kari on 7/9/23.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(models) { model in
                FeaturedItemView(model: model)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            } // End of ForEach
        } // End of TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 14 Pro")
            .background(Color.gray)
    }
}
