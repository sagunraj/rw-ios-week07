//
//  LikedPostView.swift
//  Birdui
//
//  Created by Sagun Raj Lage on 7/13/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct LikedPostView: View {
    
    var post: MediaPost
    let postImageSize: CGFloat = 100
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    MascotAndPostDetailsView(post: self.post)
                }
                HStack {
                    Text("\(self.post.textBody ?? "")")
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }
            if self.post.uiImage != nil {
                Image(uiImage: self.post.uiImage!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: self.postImageSize,
                           height: self.postImageSize)
            }
        }
    }
}

struct LikedPostView_Previews: PreviewProvider {
    static var previews: some View {
        LikedPostView(post: MediaPost(textBody: "Went to the Aquarium today :]",
                                      userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                                      uiImage: UIImage(named: "octopus")))
    }
}
