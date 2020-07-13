//
//  PostListView.swift
//  Birdui
//
//  Created by Audrey Tam on 4/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI
var post = PostViewModel()

struct PostListView: View {
    
    var body: some View {
        // TODO: This should look exactly like the Birdie table view,
        // but with only one button.
        VStack(alignment: .leading) {
            Group {
                HeaderView()
                Button("Create New Post") {}
            }
            .modifier(HPaddingModifier())
            List {
                ForEach(post.posts.indices) { index in
                    PostView(post: post.posts[index])
                }
            }
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
