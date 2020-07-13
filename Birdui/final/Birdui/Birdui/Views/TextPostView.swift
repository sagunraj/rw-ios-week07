//
//  TextPostView.swift
//  Birdui
//
//  Created by Sagun Raj Lage on 7/13/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct TextPostView: View {
    
    let post: MediaPost
    let mascotImageSize: CGFloat = 50
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
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
            HStack {
                Text("\(self.post.textBody ?? "")")
                    .multilineTextAlignment(.leading)
                Spacer()
            }
        }
    }
}

struct TextPostView_Previews: PreviewProvider {
    static var previews: some View {
        TextPostView(post: MediaPost(textBody: "Went to the Aquarium today :]",
                                     userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                                     uiImage: UIImage(named: "octopus")))
    }
}
