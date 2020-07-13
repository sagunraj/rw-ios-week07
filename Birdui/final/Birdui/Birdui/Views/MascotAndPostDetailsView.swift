//
//  MascotAndPostDetailsView.swift
//  Birdui
//
//  Created by Sagun Raj Lage on 7/13/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct MascotAndPostDetailsView: View {
    
    let post: MediaPost
    let mascotImageSize: CGFloat = 50
    
    var body: some View {
        Group {
            Image("mascot_swift-badge")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: self.mascotImageSize,
                       height: self.mascotImageSize)
            VStack(alignment: .leading) {
                Text(self.post.userName)
                Text("\(self.post.timestamp.getDateString(ofFormat: "d MMM, HH:mm"))")
            }
        }
    }
}

struct MascotAndPostDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MascotAndPostDetailsView(post: MediaPost(textBody: "Went to the Aquarium today :]",
                                                 userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                                                 uiImage: UIImage(named: "octopus")))
    }
}
