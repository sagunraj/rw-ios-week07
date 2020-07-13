//
//  PostView.swift
//  Birdui
//
//  Created by Audrey Tam on 4/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostView: View {
    
    @Binding var post: MediaPost
    
    let postImageSize: CGFloat = 100
    
    var body: some View {
        VStack {
            TextPostView(post: $post)
            if post.uiImage != nil {
                Image(uiImage: post.uiImage!)
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
        PostView(post: .constant(MediaPost(textBody: "Went to the Aquarium today :]",
                                 userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                                 uiImage: UIImage(named: "octopus"))))
    }
}

