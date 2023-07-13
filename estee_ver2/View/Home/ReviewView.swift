//
//  ReviewView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/11/23.
//

import SwiftUI

struct ReviewView: View {
    var body: some View {
        VStack {
            Text("#ShowSkinLove")
                .font(.title)
                .foregroundColor(.pink)
                .multilineTextAlignment(.center)
                .fontWeight(.heavy)
                .padding(2)
            
            Text("#❤️                           ")
                .font(.title)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                .padding(2)
                .foregroundColor(space)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Text("#( ˘ ³˘)♥                           ")
                .font(.title)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                .padding(2)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Text("#GlassSkin                           ")
                .font(.title)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                .padding(2)
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Text("#CleanBeauty                           ")
                .font(.title)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                .padding(2)
                .foregroundColor(.indigo)
                .frame(maxWidth: .infinity, alignment: .trailing)

        } // vstack end
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
