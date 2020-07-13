//
//  LikedPostView.swift
//  Birdui
//
//  Created by Sagun Raj Lage on 7/13/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct LikedPostsView: View {
    
    var posts: [MediaPost]
        
    var body: some View {
        VStack {
            Text("Liked Posts")
                .font(.headline)
            if posts.count > 0 {
                List {
                    ForEach(posts) { index in
                        LikedPostView(post: self.posts[index])
                    }
                }
            } else {
                VStack {
                    Spacer()
                    Text("You haven't liked any posts yet. \nTime to go on and ♥️ them!")
                        .multilineTextAlignment(.center)
                    Spacer()
                }
            }
        }
    }
}

struct LikedPostsView_Previews: PreviewProvider {
    static var previews: some View {
        LikedPostsView(posts: [MediaPost(textBody: "Went to the Aquarium today :]",
                                         userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                                         uiImage: UIImage(named: "octopus"))])
    }
}
