//
//  HashTagView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/11/23.
//

import SwiftUI

struct HashTagView: View {
    //property
    //view
    var body: some View {
        VStack {
            Text("NEW COLLECTION")
                .font(.caption2)
                .multilineTextAlignment(.center)
                .padding(2)
            
            Text("#NUTRITIOUS")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .fontWeight(.heavy)
                .padding(2)
            
            Text("Ingeniously calibrated. Nutrient-rich. Featuring 92%+ naturally derived* formulas.")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(2)
            
            Text("Skincare that will help skin flourish and glow.")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(2)
        } //vstack end
    }
}

struct HashTagView_Previews: PreviewProvider {
    static var previews: some View {
        HashTagView()
    }
}
