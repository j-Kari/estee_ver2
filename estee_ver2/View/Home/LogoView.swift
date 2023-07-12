//
//  LogoView.swift
//  estee_base
//
//  Created by Jahnavi Kari on 7/8/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Estée Lauder".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        } //HStack end
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
    }
}
