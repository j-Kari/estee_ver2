//
//  FooterView.swift
//  estee_base
//
//  Created by Jahnavi Kari on 7/8/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Founded in 1946 by Estée Lauder, Estée Lauder has gained a worldwide reputation for elegance, luxury and superior quality. Through extensive research and stringent product evaluation, we are pleased to bring you skincare, makeup and fragrance products that are both gentle, highly effective, and uphold the finest standards of excellence.")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            /*Image("logo")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)*/
            
            Text("Estée Lauder x KODE With Klossy Challenge \nSubmission - Jahnavi Kari")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } // End of VSTACK
        .padding()
        .padding(.vertical, 30)
        .frame(maxWidth: .infinity)
        .background(yinmn.edgesIgnoringSafeArea(.bottom))
        .frame(alignment: .bottom)
    }
}
    
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
    }
}
