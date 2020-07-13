//
//  PostView.swift
//  Birdui
//
//  Created by Audrey Tam on 4/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostView: View {
    
    let post: MediaPost
    
    let masscotImageSize: CGFloat = 50
    let postImageSize: CGFloat = 100
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Image("mascot_swift-badge")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: self.masscotImageSize,
                               height: self.masscotImageSize)
                    VStack(alignment: .leading) {
                        Text(self.post.userName)
                        Text("\(self.post.timestamp, formatter: PostListView.taskDateFormat)")
                    }
                }
                HStack {
                    Text("\(self.post.textBody ?? "")")
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }
            self.post.uiImage.map {
                Image(uiImage: $0)
                    .resizable()
                    .scaledToFit()
                    .frame(width: self.postImageSize,
                           height: self.postImageSize)
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: MediaPost(textBody: "Went to the Aquarium today :]",
                                 userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                                 uiImage: UIImage(named: "octopus")))
    }
}
