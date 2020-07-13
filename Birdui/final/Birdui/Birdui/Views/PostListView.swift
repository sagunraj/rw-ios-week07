//
//  PostListView.swift
//  Birdui
//
//  Created by Audrey Tam on 4/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostListView: View {
    
    var post = PostViewModel()
    
    @State var isModalShown = false
    
    var body: some View {
        // TODO: This should look exactly like the Birdie table view,
        // but with only one button.
        VStack(alignment: .leading) {
            Group {
                HeaderView()
                Button("Create New Post") {
                    self.isModalShown.toggle()
                }
            }
            .modifier(HPaddingModifier())
            List {
                ForEach(post.posts.indices) { index in
                    PostView(post: self.post.posts[index])
                }
            }
        }
        .sheet(isPresented: $isModalShown) {
            NewPostView(postHandler: self.post)
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
