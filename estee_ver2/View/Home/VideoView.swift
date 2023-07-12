//
//  home.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/11/23.
//

import SwiftUI
import UIKit
import AVKit
struct VideoView: View {
    //property
    
    let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "video", withExtension: "mp4")!)
    
    //body
    var body: some View {
        VideoPlayer(player: avPlayer)
            .scaledToFit()
            //.aspectRatio(1920 / 1080, contentMode: .fit)
        // 1920 × 1080
            // .frame(width: 400, height: 300)
    }
}


struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
            .previewDevice("iPhone 14 Pro")
    }
}
