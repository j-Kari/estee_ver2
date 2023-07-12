//
//  Highlights.swift
//  estee_ver2
//
//  Created by Kiran Kari on 7/12/23.
//

import SwiftUI

struct Highlights: View {
    //properties
    // body
    var body: some View {
        VStack {
            Text("FEATURES")
                .font(.title2)
                .multilineTextAlignment(.center)
                .fontWeight(.heavy)
                .padding(2)
            
            Text("• RED ALGAE FERMENT")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(2)
            
            Text("• COCONUT WATER FERMENT")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(2)
            
            Text("• SWEET KELP")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(2)
            
            Text("• NUTRI-9 COMPLEX")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(2)
            
        }
    }
}

struct Highlights_Previews: PreviewProvider {
    static var previews: some View {
        Highlights()
    }
}

/*
 struct RealBulletListView: View {
     @EnvironmentObject var uiParams: UIParameters
     
     var body: some View {
         ScrollView(.vertical, showsIndicators: true) {
             VStack(alignment: .leading) {
                 Text("With bullet width 20pt").heading3()
                 BulletList(listItems: uiParams.data,
                            listItemSpacing: 10,
                            bulletWidth: 20)
             }
             .padding(15)
         }
     }
 }
*/

/*
 
 */
