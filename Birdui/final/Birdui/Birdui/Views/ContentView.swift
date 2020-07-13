//
//  ContentView.swift
//  Birdui
//
//  Created by Sagun Raj Lage on 7/13/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

enum ActiveSheet {
    case newPost
    case likedList
}

struct ContentView: View {
    
    @ObservedObject var post = PostViewModel()
    
    @State var isModalShown = false
    @State var isLikedListShown = false
    @State var activeSheet: ActiveSheet = .newPost
    
    var body: some View {
        // TODO: This should look exactly like the Birdie table view,
        // but with only one button.
        VStack(alignment: .leading) {
            Group {
                HeaderView(posts: $post.posts,
                           activeSheet: $activeSheet,
                           isModalShown: $isModalShown)
                Button("Create New Post") {
                    self.activeSheet = .newPost
                    self.isModalShown.toggle()
                }
            }
            .modifier(HPaddingModifier())
            PostListView(posts: $post.posts)
        }
        .sheet(isPresented: $isModalShown) {
            if self.activeSheet == .newPost {
                NewPostView(postHandler: self.post)
            } else {
                LikedPostsView(posts: self.post.getLikedPosts())
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
